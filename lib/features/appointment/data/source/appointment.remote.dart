import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:retrofit/http.dart';
import '../models/appointment.dart';
import '../models/appointment.res.dart';

part 'appointment.remote.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppointmentRemoteDataSource {
  factory AppointmentRemoteDataSource(Dio dio, {String baseUrl}) =
      _AppointmentRemoteDataSource;

  //Get All
  @GET(ApiConstants.appointments)
  Future<AppointmentListResponse> getAllAppointments();

  //Get One
  @GET("${ApiConstants.appointments}/{id}")
  Future<AppointmentResponse> getAppointment(
    @Path("id") String id,
  );

  //Create Appointment
  @POST(ApiConstants.appointments)
  Future<AppointmentResponse> createAppointment(
    @Body() AppointmentModel appointment,
  );

  //Update Appointment
  @PATCH("${ApiConstants.appointments}/{id}")
  Future<AppointmentResponse> updateAppointment(
    @Path("id") String id,
    @Body() AppointmentModel update,
  );

  //Delete Appointment
  @DELETE("${ApiConstants.appointments}/{id}")
  Future<AppointmentResponse> deleteAppointment(
    @Path("id") String id,
  );
}
