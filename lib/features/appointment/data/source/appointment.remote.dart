import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:retrofit/http.dart';
import '../models/appointment.dart';
import 'appointment.res.dart';

part 'appointment.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class AppointmentRemoteDataSource {
  factory AppointmentRemoteDataSource(Dio dio, {String baseUrl}) =
      _AppointmentRemoteDataSource;

  //Get All
  @GET(ApiConsts.appointments)
  Future<AppointmentListResponse> getAllAppointments(@Query('page') int page);

  //Get One
  @GET("${ApiConsts.appointments}/{id}")
  Future<AppointmentResponse> getAppointment(
    @Path("id") String id,
  );

  //Create Appointment
  @POST(ApiConsts.appointments)
  Future<ElementIdResponse> createAppointment(
    @Body() AppointmentModel appointment,
  );

  //Update Appointment
  @PATCH("${ApiConsts.appointments}/{id}")
  Future<AppointmentResponse> updateAppointment(
    @Path("id") String id,
    @Body() DateTime date,
  );

  //Delete Appointment
  @DELETE("${ApiConsts.appointments}/{id}")
  Future<AppointmentResponse> deleteAppointment(
    @Path("id") String id,
  );
}
