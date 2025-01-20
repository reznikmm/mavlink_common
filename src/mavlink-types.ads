--  Defines MAVLink types
--  Copyright Fil Andrii root.fi36@gmail.com 2022

package MAVLink.Types is

   pragma Pure (MAVLink.Types);

   type Hl_Failure_Flag is record
      Hl_Failure_Flag_Gps                   : Boolean := False;
      Hl_Failure_Flag_Differential_Pressure : Boolean := False;
      Hl_Failure_Flag_Absolute_Pressure     : Boolean := False;
      Hl_Failure_Flag_3D_Accel              : Boolean := False;
      Hl_Failure_Flag_3D_Gyro               : Boolean := False;
      Hl_Failure_Flag_3D_Mag                : Boolean := False;
      Hl_Failure_Flag_Terrain               : Boolean := False;
      Hl_Failure_Flag_Battery               : Boolean := False;
      Hl_Failure_Flag_Rc_Receiver           : Boolean := False;
      Hl_Failure_Flag_Offboard_Link         : Boolean := False;
      Hl_Failure_Flag_Engine                : Boolean := False;
      Hl_Failure_Flag_Geofence              : Boolean := False;
      Hl_Failure_Flag_Estimator             : Boolean := False;
      Hl_Failure_Flag_Mission               : Boolean := False;
   end record with Size => 16;
   for Hl_Failure_Flag use record
      Hl_Failure_Flag_Gps                   at 0 range 0 .. 0;
      Hl_Failure_Flag_Differential_Pressure at 0 range 1 .. 1;
      Hl_Failure_Flag_Absolute_Pressure     at 0 range 2 .. 2;
      Hl_Failure_Flag_3D_Accel              at 0 range 3 .. 3;
      Hl_Failure_Flag_3D_Gyro               at 0 range 4 .. 4;
      Hl_Failure_Flag_3D_Mag                at 0 range 5 .. 5;
      Hl_Failure_Flag_Terrain               at 0 range 6 .. 6;
      Hl_Failure_Flag_Battery               at 0 range 7 .. 7;
      Hl_Failure_Flag_Rc_Receiver           at 0 range 8 .. 8;
      Hl_Failure_Flag_Offboard_Link         at 0 range 9 .. 9;
      Hl_Failure_Flag_Engine                at 0 range 10 .. 10;
      Hl_Failure_Flag_Geofence              at 0 range 11 .. 11;
      Hl_Failure_Flag_Estimator             at 0 range 12 .. 12;
      Hl_Failure_Flag_Mission               at 0 range 13 .. 13;
   end record;

   type Mav_Mode is
     (Mav_Mode_Preflight, Mav_Mode_Manual_Disarmed, Mav_Mode_Test_Disarmed, 
      Mav_Mode_Stabilize_Disarmed, Mav_Mode_Guided_Disarmed, 
      Mav_Mode_Auto_Disarmed, Mav_Mode_Manual_Armed, Mav_Mode_Test_Armed, 
      Mav_Mode_Stabilize_Armed, Mav_Mode_Guided_Armed, Mav_Mode_Auto_Armed)
     with Size => 8;
   for Mav_Mode use
     (Mav_Mode_Preflight          => 0,
      Mav_Mode_Manual_Disarmed    => 64,
      Mav_Mode_Test_Disarmed      => 66,
      Mav_Mode_Stabilize_Disarmed => 80,
      Mav_Mode_Guided_Disarmed    => 88,
      Mav_Mode_Auto_Disarmed      => 92,
      Mav_Mode_Manual_Armed       => 192,
      Mav_Mode_Test_Armed         => 194,
      Mav_Mode_Stabilize_Armed    => 208,
      Mav_Mode_Guided_Armed       => 216,
      Mav_Mode_Auto_Armed         => 220);

   type Mav_Sys_Status_Sensor is record
      Mav_Sys_Status_Sensor_3D_Gyro                : Boolean := False;
      Mav_Sys_Status_Sensor_3D_Accel               : Boolean := False;
      Mav_Sys_Status_Sensor_3D_Mag                 : Boolean := False;
      Mav_Sys_Status_Sensor_Absolute_Pressure      : Boolean := False;
      Mav_Sys_Status_Sensor_Differential_Pressure  : Boolean := False;
      Mav_Sys_Status_Sensor_Gps                    : Boolean := False;
      Mav_Sys_Status_Sensor_Optical_Flow           : Boolean := False;
      Mav_Sys_Status_Sensor_Vision_Position        : Boolean := False;
      Mav_Sys_Status_Sensor_Laser_Position         : Boolean := False;
      Mav_Sys_Status_Sensor_External_Ground_Truth  : Boolean := False;
      Mav_Sys_Status_Sensor_Angular_Rate_Control   : Boolean := False;
      Mav_Sys_Status_Sensor_Attitude_Stabilization : Boolean := False;
      Mav_Sys_Status_Sensor_Yaw_Position           : Boolean := False;
      Mav_Sys_Status_Sensor_Z_Altitude_Control     : Boolean := False;
      Mav_Sys_Status_Sensor_Xy_Position_Control    : Boolean := False;
      Mav_Sys_Status_Sensor_Motor_Outputs          : Boolean := False;
      Mav_Sys_Status_Sensor_Rc_Receiver            : Boolean := False;
      Mav_Sys_Status_Sensor_3D_Gyro2               : Boolean := False;
      Mav_Sys_Status_Sensor_3D_Accel2              : Boolean := False;
      Mav_Sys_Status_Sensor_3D_Mag2                : Boolean := False;
      Mav_Sys_Status_Geofence                      : Boolean := False;
      Mav_Sys_Status_Ahrs                          : Boolean := False;
      Mav_Sys_Status_Terrain                       : Boolean := False;
      Mav_Sys_Status_Reverse_Motor                 : Boolean := False;
      Mav_Sys_Status_Logging                       : Boolean := False;
      Mav_Sys_Status_Sensor_Battery                : Boolean := False;
      Mav_Sys_Status_Sensor_Proximity              : Boolean := False;
      Mav_Sys_Status_Sensor_Satcom                 : Boolean := False;
      Mav_Sys_Status_Prearm_Check                  : Boolean := False;
      Mav_Sys_Status_Obstacle_Avoidance            : Boolean := False;
      Mav_Sys_Status_Sensor_Propulsion             : Boolean := False;
      Mav_Sys_Status_Extension_Used                : Boolean := False;
   end record with Size => 32;
   for Mav_Sys_Status_Sensor use record
      Mav_Sys_Status_Sensor_3D_Gyro                at 0 range 0 .. 0;
      Mav_Sys_Status_Sensor_3D_Accel               at 0 range 1 .. 1;
      Mav_Sys_Status_Sensor_3D_Mag                 at 0 range 2 .. 2;
      Mav_Sys_Status_Sensor_Absolute_Pressure      at 0 range 3 .. 3;
      Mav_Sys_Status_Sensor_Differential_Pressure  at 0 range 4 .. 4;
      Mav_Sys_Status_Sensor_Gps                    at 0 range 5 .. 5;
      Mav_Sys_Status_Sensor_Optical_Flow           at 0 range 6 .. 6;
      Mav_Sys_Status_Sensor_Vision_Position        at 0 range 7 .. 7;
      Mav_Sys_Status_Sensor_Laser_Position         at 0 range 8 .. 8;
      Mav_Sys_Status_Sensor_External_Ground_Truth  at 0 range 9 .. 9;
      Mav_Sys_Status_Sensor_Angular_Rate_Control   at 0 range 10 .. 10;
      Mav_Sys_Status_Sensor_Attitude_Stabilization at 0 range 11 .. 11;
      Mav_Sys_Status_Sensor_Yaw_Position           at 0 range 12 .. 12;
      Mav_Sys_Status_Sensor_Z_Altitude_Control     at 0 range 13 .. 13;
      Mav_Sys_Status_Sensor_Xy_Position_Control    at 0 range 14 .. 14;
      Mav_Sys_Status_Sensor_Motor_Outputs          at 0 range 15 .. 15;
      Mav_Sys_Status_Sensor_Rc_Receiver            at 0 range 16 .. 16;
      Mav_Sys_Status_Sensor_3D_Gyro2               at 0 range 17 .. 17;
      Mav_Sys_Status_Sensor_3D_Accel2              at 0 range 18 .. 18;
      Mav_Sys_Status_Sensor_3D_Mag2                at 0 range 19 .. 19;
      Mav_Sys_Status_Geofence                      at 0 range 20 .. 20;
      Mav_Sys_Status_Ahrs                          at 0 range 21 .. 21;
      Mav_Sys_Status_Terrain                       at 0 range 22 .. 22;
      Mav_Sys_Status_Reverse_Motor                 at 0 range 23 .. 23;
      Mav_Sys_Status_Logging                       at 0 range 24 .. 24;
      Mav_Sys_Status_Sensor_Battery                at 0 range 25 .. 25;
      Mav_Sys_Status_Sensor_Proximity              at 0 range 26 .. 26;
      Mav_Sys_Status_Sensor_Satcom                 at 0 range 27 .. 27;
      Mav_Sys_Status_Prearm_Check                  at 0 range 28 .. 28;
      Mav_Sys_Status_Obstacle_Avoidance            at 0 range 29 .. 29;
      Mav_Sys_Status_Sensor_Propulsion             at 0 range 30 .. 30;
      Mav_Sys_Status_Extension_Used                at 0 range 31 .. 31;
   end record;

   type Mav_Frame is
     (Mav_Frame_Global, Mav_Frame_Local_Ned, Mav_Frame_Mission, 
      Mav_Frame_Global_Relative_Alt, Mav_Frame_Local_Enu, Mav_Frame_Global_Int, 
      Mav_Frame_Global_Relative_Alt_Int, Mav_Frame_Local_Offset_Ned, 
      Mav_Frame_Body_Ned, Mav_Frame_Body_Offset_Ned, 
      Mav_Frame_Global_Terrain_Alt, Mav_Frame_Global_Terrain_Alt_Int, 
      Mav_Frame_Body_Frd, Mav_Frame_Reserved_13, Mav_Frame_Reserved_14, 
      Mav_Frame_Reserved_15, Mav_Frame_Reserved_16, Mav_Frame_Reserved_17, 
      Mav_Frame_Reserved_18, Mav_Frame_Reserved_19, Mav_Frame_Local_Frd, 
      Mav_Frame_Local_Flu) with Size => 8;
   for Mav_Frame use
     (Mav_Frame_Global                  => 0,
      Mav_Frame_Local_Ned               => 1,
      Mav_Frame_Mission                 => 2,
      Mav_Frame_Global_Relative_Alt     => 3,
      Mav_Frame_Local_Enu               => 4,
      Mav_Frame_Global_Int              => 5,
      Mav_Frame_Global_Relative_Alt_Int => 6,
      Mav_Frame_Local_Offset_Ned        => 7,
      Mav_Frame_Body_Ned                => 8,
      Mav_Frame_Body_Offset_Ned         => 9,
      Mav_Frame_Global_Terrain_Alt      => 10,
      Mav_Frame_Global_Terrain_Alt_Int  => 11,
      Mav_Frame_Body_Frd                => 12,
      Mav_Frame_Reserved_13             => 13,
      Mav_Frame_Reserved_14             => 14,
      Mav_Frame_Reserved_15             => 15,
      Mav_Frame_Reserved_16             => 16,
      Mav_Frame_Reserved_17             => 17,
      Mav_Frame_Reserved_18             => 18,
      Mav_Frame_Reserved_19             => 19,
      Mav_Frame_Local_Frd               => 20,
      Mav_Frame_Local_Flu               => 21);

   type Mavlink_Data_Stream_Type is
     (Mavlink_Data_Stream_Img_Jpeg, Mavlink_Data_Stream_Img_Bmp, 
      Mavlink_Data_Stream_Img_Raw8U, Mavlink_Data_Stream_Img_Raw32U, 
      Mavlink_Data_Stream_Img_Pgm, Mavlink_Data_Stream_Img_Png)
     with Size => 8;
   for Mavlink_Data_Stream_Type use
     (Mavlink_Data_Stream_Img_Jpeg   => 0,
      Mavlink_Data_Stream_Img_Bmp    => 1,
      Mavlink_Data_Stream_Img_Raw8U  => 2,
      Mavlink_Data_Stream_Img_Raw32U => 3,
      Mavlink_Data_Stream_Img_Pgm    => 4,
      Mavlink_Data_Stream_Img_Png    => 5);

   type Fence_Breach is
     (Fence_Breach_None, Fence_Breach_Minalt, Fence_Breach_Maxalt, 
      Fence_Breach_Boundary) with Size => 8;
   for Fence_Breach use
     (Fence_Breach_None     => 0,
      Fence_Breach_Minalt   => 1,
      Fence_Breach_Maxalt   => 2,
      Fence_Breach_Boundary => 3);

   type Mav_Cmd is
     (Mav_Cmd_Nav_Waypoint, Mav_Cmd_Nav_Loiter_Unlim, 
      Mav_Cmd_Nav_Loiter_Turns, Mav_Cmd_Nav_Loiter_Time, 
      Mav_Cmd_Nav_Return_To_Launch, Mav_Cmd_Nav_Land, Mav_Cmd_Nav_Takeoff, 
      Mav_Cmd_Nav_Land_Local, Mav_Cmd_Nav_Takeoff_Local, Mav_Cmd_Nav_Follow, 
      Mav_Cmd_Nav_Continue_And_Change_Alt, Mav_Cmd_Nav_Loiter_To_Alt, 
      Mav_Cmd_Do_Follow, Mav_Cmd_Do_Follow_Reposition, Mav_Cmd_Do_Orbit, 
      Mav_Cmd_Nav_Roi, Mav_Cmd_Nav_Pathplanning, Mav_Cmd_Nav_Spline_Waypoint, 
      Mav_Cmd_Nav_Vtol_Takeoff, Mav_Cmd_Nav_Vtol_Land, 
      Mav_Cmd_Nav_Guided_Enable, Mav_Cmd_Nav_Delay, Mav_Cmd_Nav_Payload_Place, 
      Mav_Cmd_Nav_Last, Mav_Cmd_Condition_Delay, Mav_Cmd_Condition_Change_Alt, 
      Mav_Cmd_Condition_Distance, Mav_Cmd_Condition_Yaw, 
      Mav_Cmd_Condition_Last, Mav_Cmd_Do_Set_Mode, Mav_Cmd_Do_Jump, 
      Mav_Cmd_Do_Change_Speed, Mav_Cmd_Do_Set_Home, Mav_Cmd_Do_Set_Parameter, 
      Mav_Cmd_Do_Set_Relay, Mav_Cmd_Do_Repeat_Relay, Mav_Cmd_Do_Set_Servo, 
      Mav_Cmd_Do_Repeat_Servo, Mav_Cmd_Do_Flighttermination, 
      Mav_Cmd_Do_Change_Altitude, Mav_Cmd_Do_Set_Actuator, 
      Mav_Cmd_Do_Return_Path_Start, Mav_Cmd_Do_Land_Start, 
      Mav_Cmd_Do_Rally_Land, Mav_Cmd_Do_Go_Around, Mav_Cmd_Do_Reposition, 
      Mav_Cmd_Do_Pause_Continue, Mav_Cmd_Do_Set_Reverse, 
      Mav_Cmd_Do_Set_Roi_Location, Mav_Cmd_Do_Set_Roi_Wpnext_Offset, 
      Mav_Cmd_Do_Set_Roi_None, Mav_Cmd_Do_Set_Roi_Sysid, 
      Mav_Cmd_Do_Control_Video, Mav_Cmd_Do_Set_Roi, 
      Mav_Cmd_Do_Digicam_Configure, Mav_Cmd_Do_Digicam_Control, 
      Mav_Cmd_Do_Mount_Configure, Mav_Cmd_Do_Mount_Control, 
      Mav_Cmd_Do_Set_Cam_Trigg_Dist, Mav_Cmd_Do_Fence_Enable, 
      Mav_Cmd_Do_Parachute, Mav_Cmd_Do_Motor_Test, Mav_Cmd_Do_Inverted_Flight, 
      Mav_Cmd_Do_Gripper, Mav_Cmd_Do_Autotune_Enable, 
      Mav_Cmd_Nav_Set_Yaw_Speed, Mav_Cmd_Do_Set_Cam_Trigg_Interval, 
      Mav_Cmd_Do_Mount_Control_Quat, Mav_Cmd_Do_Guided_Master, 
      Mav_Cmd_Do_Guided_Limits, Mav_Cmd_Do_Engine_Control, 
      Mav_Cmd_Do_Set_Mission_Current, Mav_Cmd_Do_Last, 
      Mav_Cmd_Preflight_Calibration, Mav_Cmd_Preflight_Set_Sensor_Offsets, 
      Mav_Cmd_Preflight_Uavcan, Mav_Cmd_Preflight_Storage, 
      Mav_Cmd_Preflight_Reboot_Shutdown, Mav_Cmd_Override_Goto, 
      Mav_Cmd_Oblique_Survey, Mav_Cmd_Mission_Start, Mav_Cmd_Actuator_Test, 
      Mav_Cmd_Configure_Actuator, Mav_Cmd_Component_Arm_Disarm, 
      Mav_Cmd_Run_Prearm_Checks, Mav_Cmd_Illuminator_On_Off, 
      Mav_Cmd_Do_Illuminator_Configure, Mav_Cmd_Get_Home_Position, 
      Mav_Cmd_Inject_Failure, Mav_Cmd_Start_Rx_Pair, 
      Mav_Cmd_Get_Message_Interval, Mav_Cmd_Set_Message_Interval, 
      Mav_Cmd_Request_Message, Mav_Cmd_Request_Protocol_Version, 
      Mav_Cmd_Request_Autopilot_Capabilities, 
      Mav_Cmd_Request_Camera_Information, Mav_Cmd_Request_Camera_Settings, 
      Mav_Cmd_Request_Storage_Information, Mav_Cmd_Storage_Format, 
      Mav_Cmd_Request_Camera_Capture_Status, Mav_Cmd_Request_Flight_Information, 
      Mav_Cmd_Reset_Camera_Settings, Mav_Cmd_Set_Camera_Mode, 
      Mav_Cmd_Set_Camera_Zoom, Mav_Cmd_Set_Camera_Focus, 
      Mav_Cmd_Set_Storage_Usage, Mav_Cmd_Set_Camera_Source, Mav_Cmd_Jump_Tag, 
      Mav_Cmd_Do_Jump_Tag, Mav_Cmd_Do_Gimbal_Manager_Pitchyaw, 
      Mav_Cmd_Do_Gimbal_Manager_Configure, Mav_Cmd_Image_Start_Capture, 
      Mav_Cmd_Image_Stop_Capture, Mav_Cmd_Request_Camera_Image_Capture, 
      Mav_Cmd_Do_Trigger_Control, Mav_Cmd_Camera_Track_Point, 
      Mav_Cmd_Camera_Track_Rectangle, Mav_Cmd_Camera_Stop_Tracking, 
      Mav_Cmd_Video_Start_Capture, Mav_Cmd_Video_Stop_Capture, 
      Mav_Cmd_Video_Start_Streaming, Mav_Cmd_Video_Stop_Streaming, 
      Mav_Cmd_Request_Video_Stream_Information, 
      Mav_Cmd_Request_Video_Stream_Status, Mav_Cmd_Logging_Start, 
      Mav_Cmd_Logging_Stop, Mav_Cmd_Airframe_Configuration, 
      Mav_Cmd_Control_High_Latency, Mav_Cmd_Panorama_Create, 
      Mav_Cmd_Do_Vtol_Transition, Mav_Cmd_Arm_Authorization_Request, 
      Mav_Cmd_Set_Guided_Submode_Standard, Mav_Cmd_Set_Guided_Submode_Circle, 
      Mav_Cmd_Condition_Gate, Mav_Cmd_Nav_Fence_Return_Point, 
      Mav_Cmd_Nav_Fence_Polygon_Vertex_Inclusion, 
      Mav_Cmd_Nav_Fence_Polygon_Vertex_Exclusion, 
      Mav_Cmd_Nav_Fence_Circle_Inclusion, Mav_Cmd_Nav_Fence_Circle_Exclusion, 
      Mav_Cmd_Nav_Rally_Point, Mav_Cmd_Uavcan_Get_Node_Info, 
      Mav_Cmd_Do_Set_Safety_Switch_State, Mav_Cmd_Do_Adsb_Out_Ident, 
      Mav_Cmd_Payload_Prepare_Deploy, Mav_Cmd_Payload_Control_Deploy, 
      Mav_Cmd_Waypoint_User_1, Mav_Cmd_Waypoint_User_2, 
      Mav_Cmd_Waypoint_User_3, Mav_Cmd_Waypoint_User_4, 
      Mav_Cmd_Waypoint_User_5, Mav_Cmd_Spatial_User_1, Mav_Cmd_Spatial_User_2, 
      Mav_Cmd_Spatial_User_3, Mav_Cmd_Spatial_User_4, Mav_Cmd_Spatial_User_5, 
      Mav_Cmd_User_1, Mav_Cmd_User_2, Mav_Cmd_User_3, Mav_Cmd_User_4, 
      Mav_Cmd_User_5, Mav_Cmd_Can_Forward, Mav_Cmd_Fixed_Mag_Cal_Yaw, 
      Mav_Cmd_Do_Winch, Mav_Cmd_External_Position_Estimate) with Size => 16;
   for Mav_Cmd use
     (Mav_Cmd_Nav_Waypoint                       => 16,
      Mav_Cmd_Nav_Loiter_Unlim                   => 17,
      Mav_Cmd_Nav_Loiter_Turns                   => 18,
      Mav_Cmd_Nav_Loiter_Time                    => 19,
      Mav_Cmd_Nav_Return_To_Launch               => 20,
      Mav_Cmd_Nav_Land                           => 21,
      Mav_Cmd_Nav_Takeoff                        => 22,
      Mav_Cmd_Nav_Land_Local                     => 23,
      Mav_Cmd_Nav_Takeoff_Local                  => 24,
      Mav_Cmd_Nav_Follow                         => 25,
      Mav_Cmd_Nav_Continue_And_Change_Alt        => 30,
      Mav_Cmd_Nav_Loiter_To_Alt                  => 31,
      Mav_Cmd_Do_Follow                          => 32,
      Mav_Cmd_Do_Follow_Reposition               => 33,
      Mav_Cmd_Do_Orbit                           => 34,
      Mav_Cmd_Nav_Roi                            => 80,
      Mav_Cmd_Nav_Pathplanning                   => 81,
      Mav_Cmd_Nav_Spline_Waypoint                => 82,
      Mav_Cmd_Nav_Vtol_Takeoff                   => 84,
      Mav_Cmd_Nav_Vtol_Land                      => 85,
      Mav_Cmd_Nav_Guided_Enable                  => 92,
      Mav_Cmd_Nav_Delay                          => 93,
      Mav_Cmd_Nav_Payload_Place                  => 94,
      Mav_Cmd_Nav_Last                           => 95,
      Mav_Cmd_Condition_Delay                    => 112,
      Mav_Cmd_Condition_Change_Alt               => 113,
      Mav_Cmd_Condition_Distance                 => 114,
      Mav_Cmd_Condition_Yaw                      => 115,
      Mav_Cmd_Condition_Last                     => 159,
      Mav_Cmd_Do_Set_Mode                        => 176,
      Mav_Cmd_Do_Jump                            => 177,
      Mav_Cmd_Do_Change_Speed                    => 178,
      Mav_Cmd_Do_Set_Home                        => 179,
      Mav_Cmd_Do_Set_Parameter                   => 180,
      Mav_Cmd_Do_Set_Relay                       => 181,
      Mav_Cmd_Do_Repeat_Relay                    => 182,
      Mav_Cmd_Do_Set_Servo                       => 183,
      Mav_Cmd_Do_Repeat_Servo                    => 184,
      Mav_Cmd_Do_Flighttermination               => 185,
      Mav_Cmd_Do_Change_Altitude                 => 186,
      Mav_Cmd_Do_Set_Actuator                    => 187,
      Mav_Cmd_Do_Return_Path_Start               => 188,
      Mav_Cmd_Do_Land_Start                      => 189,
      Mav_Cmd_Do_Rally_Land                      => 190,
      Mav_Cmd_Do_Go_Around                       => 191,
      Mav_Cmd_Do_Reposition                      => 192,
      Mav_Cmd_Do_Pause_Continue                  => 193,
      Mav_Cmd_Do_Set_Reverse                     => 194,
      Mav_Cmd_Do_Set_Roi_Location                => 195,
      Mav_Cmd_Do_Set_Roi_Wpnext_Offset           => 196,
      Mav_Cmd_Do_Set_Roi_None                    => 197,
      Mav_Cmd_Do_Set_Roi_Sysid                   => 198,
      Mav_Cmd_Do_Control_Video                   => 200,
      Mav_Cmd_Do_Set_Roi                         => 201,
      Mav_Cmd_Do_Digicam_Configure               => 202,
      Mav_Cmd_Do_Digicam_Control                 => 203,
      Mav_Cmd_Do_Mount_Configure                 => 204,
      Mav_Cmd_Do_Mount_Control                   => 205,
      Mav_Cmd_Do_Set_Cam_Trigg_Dist              => 206,
      Mav_Cmd_Do_Fence_Enable                    => 207,
      Mav_Cmd_Do_Parachute                       => 208,
      Mav_Cmd_Do_Motor_Test                      => 209,
      Mav_Cmd_Do_Inverted_Flight                 => 210,
      Mav_Cmd_Do_Gripper                         => 211,
      Mav_Cmd_Do_Autotune_Enable                 => 212,
      Mav_Cmd_Nav_Set_Yaw_Speed                  => 213,
      Mav_Cmd_Do_Set_Cam_Trigg_Interval          => 214,
      Mav_Cmd_Do_Mount_Control_Quat              => 220,
      Mav_Cmd_Do_Guided_Master                   => 221,
      Mav_Cmd_Do_Guided_Limits                   => 222,
      Mav_Cmd_Do_Engine_Control                  => 223,
      Mav_Cmd_Do_Set_Mission_Current             => 224,
      Mav_Cmd_Do_Last                            => 240,
      Mav_Cmd_Preflight_Calibration              => 241,
      Mav_Cmd_Preflight_Set_Sensor_Offsets       => 242,
      Mav_Cmd_Preflight_Uavcan                   => 243,
      Mav_Cmd_Preflight_Storage                  => 245,
      Mav_Cmd_Preflight_Reboot_Shutdown          => 246,
      Mav_Cmd_Override_Goto                      => 252,
      Mav_Cmd_Oblique_Survey                     => 260,
      Mav_Cmd_Mission_Start                      => 300,
      Mav_Cmd_Actuator_Test                      => 310,
      Mav_Cmd_Configure_Actuator                 => 311,
      Mav_Cmd_Component_Arm_Disarm               => 400,
      Mav_Cmd_Run_Prearm_Checks                  => 401,
      Mav_Cmd_Illuminator_On_Off                 => 405,
      Mav_Cmd_Do_Illuminator_Configure           => 406,
      Mav_Cmd_Get_Home_Position                  => 410,
      Mav_Cmd_Inject_Failure                     => 420,
      Mav_Cmd_Start_Rx_Pair                      => 500,
      Mav_Cmd_Get_Message_Interval               => 510,
      Mav_Cmd_Set_Message_Interval               => 511,
      Mav_Cmd_Request_Message                    => 512,
      Mav_Cmd_Request_Protocol_Version           => 519,
      Mav_Cmd_Request_Autopilot_Capabilities     => 520,
      Mav_Cmd_Request_Camera_Information         => 521,
      Mav_Cmd_Request_Camera_Settings            => 522,
      Mav_Cmd_Request_Storage_Information        => 525,
      Mav_Cmd_Storage_Format                     => 526,
      Mav_Cmd_Request_Camera_Capture_Status      => 527,
      Mav_Cmd_Request_Flight_Information         => 528,
      Mav_Cmd_Reset_Camera_Settings              => 529,
      Mav_Cmd_Set_Camera_Mode                    => 530,
      Mav_Cmd_Set_Camera_Zoom                    => 531,
      Mav_Cmd_Set_Camera_Focus                   => 532,
      Mav_Cmd_Set_Storage_Usage                  => 533,
      Mav_Cmd_Set_Camera_Source                  => 534,
      Mav_Cmd_Jump_Tag                           => 600,
      Mav_Cmd_Do_Jump_Tag                        => 601,
      Mav_Cmd_Do_Gimbal_Manager_Pitchyaw         => 1000,
      Mav_Cmd_Do_Gimbal_Manager_Configure        => 1001,
      Mav_Cmd_Image_Start_Capture                => 2000,
      Mav_Cmd_Image_Stop_Capture                 => 2001,
      Mav_Cmd_Request_Camera_Image_Capture       => 2002,
      Mav_Cmd_Do_Trigger_Control                 => 2003,
      Mav_Cmd_Camera_Track_Point                 => 2004,
      Mav_Cmd_Camera_Track_Rectangle             => 2005,
      Mav_Cmd_Camera_Stop_Tracking               => 2010,
      Mav_Cmd_Video_Start_Capture                => 2500,
      Mav_Cmd_Video_Stop_Capture                 => 2501,
      Mav_Cmd_Video_Start_Streaming              => 2502,
      Mav_Cmd_Video_Stop_Streaming               => 2503,
      Mav_Cmd_Request_Video_Stream_Information   => 2504,
      Mav_Cmd_Request_Video_Stream_Status        => 2505,
      Mav_Cmd_Logging_Start                      => 2510,
      Mav_Cmd_Logging_Stop                       => 2511,
      Mav_Cmd_Airframe_Configuration             => 2520,
      Mav_Cmd_Control_High_Latency               => 2600,
      Mav_Cmd_Panorama_Create                    => 2800,
      Mav_Cmd_Do_Vtol_Transition                 => 3000,
      Mav_Cmd_Arm_Authorization_Request          => 3001,
      Mav_Cmd_Set_Guided_Submode_Standard        => 4000,
      Mav_Cmd_Set_Guided_Submode_Circle          => 4001,
      Mav_Cmd_Condition_Gate                     => 4501,
      Mav_Cmd_Nav_Fence_Return_Point             => 5000,
      Mav_Cmd_Nav_Fence_Polygon_Vertex_Inclusion => 5001,
      Mav_Cmd_Nav_Fence_Polygon_Vertex_Exclusion => 5002,
      Mav_Cmd_Nav_Fence_Circle_Inclusion         => 5003,
      Mav_Cmd_Nav_Fence_Circle_Exclusion         => 5004,
      Mav_Cmd_Nav_Rally_Point                    => 5100,
      Mav_Cmd_Uavcan_Get_Node_Info               => 5200,
      Mav_Cmd_Do_Set_Safety_Switch_State         => 5300,
      Mav_Cmd_Do_Adsb_Out_Ident                  => 10001,
      Mav_Cmd_Payload_Prepare_Deploy             => 30001,
      Mav_Cmd_Payload_Control_Deploy             => 30002,
      Mav_Cmd_Waypoint_User_1                    => 31000,
      Mav_Cmd_Waypoint_User_2                    => 31001,
      Mav_Cmd_Waypoint_User_3                    => 31002,
      Mav_Cmd_Waypoint_User_4                    => 31003,
      Mav_Cmd_Waypoint_User_5                    => 31004,
      Mav_Cmd_Spatial_User_1                     => 31005,
      Mav_Cmd_Spatial_User_2                     => 31006,
      Mav_Cmd_Spatial_User_3                     => 31007,
      Mav_Cmd_Spatial_User_4                     => 31008,
      Mav_Cmd_Spatial_User_5                     => 31009,
      Mav_Cmd_User_1                             => 31010,
      Mav_Cmd_User_2                             => 31011,
      Mav_Cmd_User_3                             => 31012,
      Mav_Cmd_User_4                             => 31013,
      Mav_Cmd_User_5                             => 31014,
      Mav_Cmd_Can_Forward                        => 32000,
      Mav_Cmd_Fixed_Mag_Cal_Yaw                  => 42006,
      Mav_Cmd_Do_Winch                           => 42600,
      Mav_Cmd_External_Position_Estimate         => 43003);

   type Mav_Param_Type is
     (Mav_Param_Type_Uint8, Mav_Param_Type_Int8, Mav_Param_Type_Uint16, 
      Mav_Param_Type_Int16, Mav_Param_Type_Uint32, Mav_Param_Type_Int32, 
      Mav_Param_Type_Uint64, Mav_Param_Type_Int64, Mav_Param_Type_Real32, 
      Mav_Param_Type_Real64) with Size => 8;
   for Mav_Param_Type use
     (Mav_Param_Type_Uint8  => 1,
      Mav_Param_Type_Int8   => 2,
      Mav_Param_Type_Uint16 => 3,
      Mav_Param_Type_Int16  => 4,
      Mav_Param_Type_Uint32 => 5,
      Mav_Param_Type_Int32  => 6,
      Mav_Param_Type_Uint64 => 7,
      Mav_Param_Type_Int64  => 8,
      Mav_Param_Type_Real32 => 9,
      Mav_Param_Type_Real64 => 10);

   type Mav_Result is
     (Mav_Result_Accepted, Mav_Result_Temporarily_Rejected, Mav_Result_Denied, 
      Mav_Result_Unsupported, Mav_Result_Failed, Mav_Result_In_Progress, 
      Mav_Result_Cancelled, Mav_Result_Command_Long_Only, 
      Mav_Result_Command_Int_Only, Mav_Result_Command_Unsupported_Mav_Frame)
     with Size => 8;
   for Mav_Result use
     (Mav_Result_Accepted                      => 0,
      Mav_Result_Temporarily_Rejected          => 1,
      Mav_Result_Denied                        => 2,
      Mav_Result_Unsupported                   => 3,
      Mav_Result_Failed                        => 4,
      Mav_Result_In_Progress                   => 5,
      Mav_Result_Cancelled                     => 6,
      Mav_Result_Command_Long_Only             => 7,
      Mav_Result_Command_Int_Only              => 8,
      Mav_Result_Command_Unsupported_Mav_Frame => 9);

   type Mav_Mission_Result is
     (Mav_Mission_Accepted, Mav_Mission_Error, Mav_Mission_Unsupported_Frame, 
      Mav_Mission_Unsupported, Mav_Mission_No_Space, Mav_Mission_Invalid, 
      Mav_Mission_Invalid_Param1, Mav_Mission_Invalid_Param2, 
      Mav_Mission_Invalid_Param3, Mav_Mission_Invalid_Param4, 
      Mav_Mission_Invalid_Param5_X, Mav_Mission_Invalid_Param6_Y, 
      Mav_Mission_Invalid_Param7, Mav_Mission_Invalid_Sequence, 
      Mav_Mission_Denied, Mav_Mission_Operation_Cancelled) with Size => 8;
   for Mav_Mission_Result use
     (Mav_Mission_Accepted            => 0,
      Mav_Mission_Error               => 1,
      Mav_Mission_Unsupported_Frame   => 2,
      Mav_Mission_Unsupported         => 3,
      Mav_Mission_No_Space            => 4,
      Mav_Mission_Invalid             => 5,
      Mav_Mission_Invalid_Param1      => 6,
      Mav_Mission_Invalid_Param2      => 7,
      Mav_Mission_Invalid_Param3      => 8,
      Mav_Mission_Invalid_Param4      => 9,
      Mav_Mission_Invalid_Param5_X    => 10,
      Mav_Mission_Invalid_Param6_Y    => 11,
      Mav_Mission_Invalid_Param7      => 12,
      Mav_Mission_Invalid_Sequence    => 13,
      Mav_Mission_Denied              => 14,
      Mav_Mission_Operation_Cancelled => 15);

   type Mav_Severity is
     (Mav_Severity_Emergency, Mav_Severity_Alert, Mav_Severity_Critical, 
      Mav_Severity_Error, Mav_Severity_Warning, Mav_Severity_Notice, 
      Mav_Severity_Info, Mav_Severity_Debug) with Size => 8;
   for Mav_Severity use
     (Mav_Severity_Emergency => 0,
      Mav_Severity_Alert     => 1,
      Mav_Severity_Critical  => 2,
      Mav_Severity_Error     => 3,
      Mav_Severity_Warning   => 4,
      Mav_Severity_Notice    => 5,
      Mav_Severity_Info      => 6,
      Mav_Severity_Debug     => 7);

   type Mav_Power_Status is record
      Mav_Power_Status_Brick_Valid                : Boolean := False;
      Mav_Power_Status_Servo_Valid                : Boolean := False;
      Mav_Power_Status_Usb_Connected              : Boolean := False;
      Mav_Power_Status_Periph_Overcurrent         : Boolean := False;
      Mav_Power_Status_Periph_Hipower_Overcurrent : Boolean := False;
      Mav_Power_Status_Changed                    : Boolean := False;
   end record with Size => 16;
   for Mav_Power_Status use record
      Mav_Power_Status_Brick_Valid                at 0 range 0 .. 0;
      Mav_Power_Status_Servo_Valid                at 0 range 1 .. 1;
      Mav_Power_Status_Usb_Connected              at 0 range 2 .. 2;
      Mav_Power_Status_Periph_Overcurrent         at 0 range 3 .. 3;
      Mav_Power_Status_Periph_Hipower_Overcurrent at 0 range 4 .. 4;
      Mav_Power_Status_Changed                    at 0 range 5 .. 5;
   end record;

   type Serial_Control_Dev is
     (Serial_Control_Dev_Telem1, Serial_Control_Dev_Telem2, 
      Serial_Control_Dev_Gps1, Serial_Control_Dev_Gps2, 
      Serial_Control_Dev_Shell, Serial_Control_Serial0, Serial_Control_Serial1, 
      Serial_Control_Serial2, Serial_Control_Serial3, Serial_Control_Serial4, 
      Serial_Control_Serial5, Serial_Control_Serial6, Serial_Control_Serial7, 
      Serial_Control_Serial8, Serial_Control_Serial9) with Size => 8;
   for Serial_Control_Dev use
     (Serial_Control_Dev_Telem1 => 0,
      Serial_Control_Dev_Telem2 => 1,
      Serial_Control_Dev_Gps1   => 2,
      Serial_Control_Dev_Gps2   => 3,
      Serial_Control_Dev_Shell  => 10,
      Serial_Control_Serial0    => 100,
      Serial_Control_Serial1    => 101,
      Serial_Control_Serial2    => 102,
      Serial_Control_Serial3    => 103,
      Serial_Control_Serial4    => 104,
      Serial_Control_Serial5    => 105,
      Serial_Control_Serial6    => 106,
      Serial_Control_Serial7    => 107,
      Serial_Control_Serial8    => 108,
      Serial_Control_Serial9    => 109);

   type Serial_Control_Flag is record
      Serial_Control_Flag_Reply     : Boolean := False;
      Serial_Control_Flag_Respond   : Boolean := False;
      Serial_Control_Flag_Exclusive : Boolean := False;
      Serial_Control_Flag_Blocking  : Boolean := False;
      Serial_Control_Flag_Multi     : Boolean := False;
   end record with Size => 8;
   for Serial_Control_Flag use record
      Serial_Control_Flag_Reply     at 0 range 0 .. 0;
      Serial_Control_Flag_Respond   at 0 range 1 .. 1;
      Serial_Control_Flag_Exclusive at 0 range 2 .. 2;
      Serial_Control_Flag_Blocking  at 0 range 3 .. 3;
      Serial_Control_Flag_Multi     at 0 range 4 .. 4;
   end record;

   type Mav_Distance_Sensor is
     (Mav_Distance_Sensor_Laser, Mav_Distance_Sensor_Ultrasound, 
      Mav_Distance_Sensor_Infrared, Mav_Distance_Sensor_Radar, 
      Mav_Distance_Sensor_Unknown) with Size => 8;
   for Mav_Distance_Sensor use
     (Mav_Distance_Sensor_Laser      => 0,
      Mav_Distance_Sensor_Ultrasound => 1,
      Mav_Distance_Sensor_Infrared   => 2,
      Mav_Distance_Sensor_Radar      => 3,
      Mav_Distance_Sensor_Unknown    => 4);

   type Mav_Sensor_Orientation is
     (Mav_Sensor_Rotation_None, Mav_Sensor_Rotation_Yaw_45, 
      Mav_Sensor_Rotation_Yaw_90, Mav_Sensor_Rotation_Yaw_135, 
      Mav_Sensor_Rotation_Yaw_180, Mav_Sensor_Rotation_Yaw_225, 
      Mav_Sensor_Rotation_Yaw_270, Mav_Sensor_Rotation_Yaw_315, 
      Mav_Sensor_Rotation_Roll_180, Mav_Sensor_Rotation_Roll_180_Yaw_45, 
      Mav_Sensor_Rotation_Roll_180_Yaw_90, Mav_Sensor_Rotation_Roll_180_Yaw_135, 
      Mav_Sensor_Rotation_Pitch_180, Mav_Sensor_Rotation_Roll_180_Yaw_225, 
      Mav_Sensor_Rotation_Roll_180_Yaw_270, 
      Mav_Sensor_Rotation_Roll_180_Yaw_315, Mav_Sensor_Rotation_Roll_90, 
      Mav_Sensor_Rotation_Roll_90_Yaw_45, Mav_Sensor_Rotation_Roll_90_Yaw_90, 
      Mav_Sensor_Rotation_Roll_90_Yaw_135, Mav_Sensor_Rotation_Roll_270, 
      Mav_Sensor_Rotation_Roll_270_Yaw_45, Mav_Sensor_Rotation_Roll_270_Yaw_90, 
      Mav_Sensor_Rotation_Roll_270_Yaw_135, Mav_Sensor_Rotation_Pitch_90, 
      Mav_Sensor_Rotation_Pitch_270, Mav_Sensor_Rotation_Pitch_180_Yaw_90, 
      Mav_Sensor_Rotation_Pitch_180_Yaw_270, 
      Mav_Sensor_Rotation_Roll_90_Pitch_90, 
      Mav_Sensor_Rotation_Roll_180_Pitch_90, 
      Mav_Sensor_Rotation_Roll_270_Pitch_90, 
      Mav_Sensor_Rotation_Roll_90_Pitch_180, 
      Mav_Sensor_Rotation_Roll_270_Pitch_180, 
      Mav_Sensor_Rotation_Roll_90_Pitch_270, 
      Mav_Sensor_Rotation_Roll_180_Pitch_270, 
      Mav_Sensor_Rotation_Roll_270_Pitch_270, 
      Mav_Sensor_Rotation_Roll_90_Pitch_180_Yaw_90, 
      Mav_Sensor_Rotation_Roll_90_Yaw_270, 
      Mav_Sensor_Rotation_Roll_90_Pitch_68_Yaw_293, 
      Mav_Sensor_Rotation_Pitch_315, Mav_Sensor_Rotation_Roll_90_Pitch_315, 
      Mav_Sensor_Rotation_Custom) with Size => 8;
   for Mav_Sensor_Orientation use
     (Mav_Sensor_Rotation_None                     => 0,
      Mav_Sensor_Rotation_Yaw_45                   => 1,
      Mav_Sensor_Rotation_Yaw_90                   => 2,
      Mav_Sensor_Rotation_Yaw_135                  => 3,
      Mav_Sensor_Rotation_Yaw_180                  => 4,
      Mav_Sensor_Rotation_Yaw_225                  => 5,
      Mav_Sensor_Rotation_Yaw_270                  => 6,
      Mav_Sensor_Rotation_Yaw_315                  => 7,
      Mav_Sensor_Rotation_Roll_180                 => 8,
      Mav_Sensor_Rotation_Roll_180_Yaw_45          => 9,
      Mav_Sensor_Rotation_Roll_180_Yaw_90          => 10,
      Mav_Sensor_Rotation_Roll_180_Yaw_135         => 11,
      Mav_Sensor_Rotation_Pitch_180                => 12,
      Mav_Sensor_Rotation_Roll_180_Yaw_225         => 13,
      Mav_Sensor_Rotation_Roll_180_Yaw_270         => 14,
      Mav_Sensor_Rotation_Roll_180_Yaw_315         => 15,
      Mav_Sensor_Rotation_Roll_90                  => 16,
      Mav_Sensor_Rotation_Roll_90_Yaw_45           => 17,
      Mav_Sensor_Rotation_Roll_90_Yaw_90           => 18,
      Mav_Sensor_Rotation_Roll_90_Yaw_135          => 19,
      Mav_Sensor_Rotation_Roll_270                 => 20,
      Mav_Sensor_Rotation_Roll_270_Yaw_45          => 21,
      Mav_Sensor_Rotation_Roll_270_Yaw_90          => 22,
      Mav_Sensor_Rotation_Roll_270_Yaw_135         => 23,
      Mav_Sensor_Rotation_Pitch_90                 => 24,
      Mav_Sensor_Rotation_Pitch_270                => 25,
      Mav_Sensor_Rotation_Pitch_180_Yaw_90         => 26,
      Mav_Sensor_Rotation_Pitch_180_Yaw_270        => 27,
      Mav_Sensor_Rotation_Roll_90_Pitch_90         => 28,
      Mav_Sensor_Rotation_Roll_180_Pitch_90        => 29,
      Mav_Sensor_Rotation_Roll_270_Pitch_90        => 30,
      Mav_Sensor_Rotation_Roll_90_Pitch_180        => 31,
      Mav_Sensor_Rotation_Roll_270_Pitch_180       => 32,
      Mav_Sensor_Rotation_Roll_90_Pitch_270        => 33,
      Mav_Sensor_Rotation_Roll_180_Pitch_270       => 34,
      Mav_Sensor_Rotation_Roll_270_Pitch_270       => 35,
      Mav_Sensor_Rotation_Roll_90_Pitch_180_Yaw_90 => 36,
      Mav_Sensor_Rotation_Roll_90_Yaw_270          => 37,
      Mav_Sensor_Rotation_Roll_90_Pitch_68_Yaw_293 => 38,
      Mav_Sensor_Rotation_Pitch_315                => 39,
      Mav_Sensor_Rotation_Roll_90_Pitch_315        => 40,
      Mav_Sensor_Rotation_Custom                   => 100);

   type Mav_Protocol_Capability is record
      Mav_Protocol_Capability_Mission_Float                       : Boolean := False;
      Mav_Protocol_Capability_Param_Float                         : Boolean := False;
      Mav_Protocol_Capability_Mission_Int                         : Boolean := False;
      Mav_Protocol_Capability_Command_Int                         : Boolean := False;
      Mav_Protocol_Capability_Param_Encode_Bytewise               : Boolean := False;
      Mav_Protocol_Capability_Ftp                                 : Boolean := False;
      Mav_Protocol_Capability_Set_Attitude_Target                 : Boolean := False;
      Mav_Protocol_Capability_Set_Position_Target_Local_Ned       : Boolean := False;
      Mav_Protocol_Capability_Set_Position_Target_Global_Int      : Boolean := False;
      Mav_Protocol_Capability_Terrain                             : Boolean := False;
      Mav_Protocol_Capability_Reserved3                           : Boolean := False;
      Mav_Protocol_Capability_Flight_Termination                  : Boolean := False;
      Mav_Protocol_Capability_Compass_Calibration                 : Boolean := False;
      Mav_Protocol_Capability_Mavlink2                            : Boolean := False;
      Mav_Protocol_Capability_Mission_Fence                       : Boolean := False;
      Mav_Protocol_Capability_Mission_Rally                       : Boolean := False;
      Mav_Protocol_Capability_Reserved2                           : Boolean := False;
      Mav_Protocol_Capability_Param_Encode_C_Cast                 : Boolean := False;
      Mav_Protocol_Capability_Component_Implements_Gimbal_Manager : Boolean := False;
      Mav_Protocol_Capability_Component_Accepts_Gcs_Control       : Boolean := False;
   end record with Size => 64;
   for Mav_Protocol_Capability use record
      Mav_Protocol_Capability_Mission_Float                       at 0 range 0 .. 0;
      Mav_Protocol_Capability_Param_Float                         at 0 range 1 .. 1;
      Mav_Protocol_Capability_Mission_Int                         at 0 range 2 .. 2;
      Mav_Protocol_Capability_Command_Int                         at 0 range 3 .. 3;
      Mav_Protocol_Capability_Param_Encode_Bytewise               at 0 range 4 .. 4;
      Mav_Protocol_Capability_Ftp                                 at 0 range 5 .. 5;
      Mav_Protocol_Capability_Set_Attitude_Target                 at 0 range 6 .. 6;
      Mav_Protocol_Capability_Set_Position_Target_Local_Ned       at 0 range 7 .. 7;
      Mav_Protocol_Capability_Set_Position_Target_Global_Int      at 0 range 8 .. 8;
      Mav_Protocol_Capability_Terrain                             at 0 range 9 .. 9;
      Mav_Protocol_Capability_Reserved3                           at 0 range 10 .. 10;
      Mav_Protocol_Capability_Flight_Termination                  at 0 range 11 .. 11;
      Mav_Protocol_Capability_Compass_Calibration                 at 0 range 12 .. 12;
      Mav_Protocol_Capability_Mavlink2                            at 0 range 13 .. 13;
      Mav_Protocol_Capability_Mission_Fence                       at 0 range 14 .. 14;
      Mav_Protocol_Capability_Mission_Rally                       at 0 range 15 .. 15;
      Mav_Protocol_Capability_Reserved2                           at 0 range 16 .. 16;
      Mav_Protocol_Capability_Param_Encode_C_Cast                 at 0 range 17 .. 17;
      Mav_Protocol_Capability_Component_Implements_Gimbal_Manager at 0 range 18 .. 18;
      Mav_Protocol_Capability_Component_Accepts_Gcs_Control       at 0 range 19 .. 19;
   end record;

   type Mav_Estimator_Type is
     (Mav_Estimator_Type_Unknown, Mav_Estimator_Type_Naive, 
      Mav_Estimator_Type_Vision, Mav_Estimator_Type_Vio, 
      Mav_Estimator_Type_Gps, Mav_Estimator_Type_Gps_Ins, 
      Mav_Estimator_Type_Mocap, Mav_Estimator_Type_Lidar, 
      Mav_Estimator_Type_Autopilot) with Size => 8;
   for Mav_Estimator_Type use
     (Mav_Estimator_Type_Unknown   => 0,
      Mav_Estimator_Type_Naive     => 1,
      Mav_Estimator_Type_Vision    => 2,
      Mav_Estimator_Type_Vio       => 3,
      Mav_Estimator_Type_Gps       => 4,
      Mav_Estimator_Type_Gps_Ins   => 5,
      Mav_Estimator_Type_Mocap     => 6,
      Mav_Estimator_Type_Lidar     => 7,
      Mav_Estimator_Type_Autopilot => 8);

   type Mav_Battery_Type is
     (Mav_Battery_Type_Unknown, Mav_Battery_Type_Lipo, Mav_Battery_Type_Life, 
      Mav_Battery_Type_Lion, Mav_Battery_Type_Nimh) with Size => 8;
   for Mav_Battery_Type use
     (Mav_Battery_Type_Unknown => 0,
      Mav_Battery_Type_Lipo    => 1,
      Mav_Battery_Type_Life    => 2,
      Mav_Battery_Type_Lion    => 3,
      Mav_Battery_Type_Nimh    => 4);

   type Mav_Battery_Function is
     (Mav_Battery_Function_Unknown, Mav_Battery_Function_All, 
      Mav_Battery_Function_Propulsion, Mav_Battery_Function_Avionics, 
      Mav_Battery_Function_Payload) with Size => 8;
   for Mav_Battery_Function use
     (Mav_Battery_Function_Unknown    => 0,
      Mav_Battery_Function_All        => 1,
      Mav_Battery_Function_Propulsion => 2,
      Mav_Battery_Function_Avionics   => 3,
      Mav_Battery_Function_Payload    => 4);

   type Mav_Vtol_State is
     (Mav_Vtol_State_Undefined, Mav_Vtol_State_Transition_To_Fw, 
      Mav_Vtol_State_Transition_To_Mc, Mav_Vtol_State_Mc, Mav_Vtol_State_Fw)
     with Size => 8;
   for Mav_Vtol_State use
     (Mav_Vtol_State_Undefined        => 0,
      Mav_Vtol_State_Transition_To_Fw => 1,
      Mav_Vtol_State_Transition_To_Mc => 2,
      Mav_Vtol_State_Mc               => 3,
      Mav_Vtol_State_Fw               => 4);

   type Mav_Landed_State is
     (Mav_Landed_State_Undefined, Mav_Landed_State_On_Ground, 
      Mav_Landed_State_In_Air, Mav_Landed_State_Takeoff, 
      Mav_Landed_State_Landing) with Size => 8;
   for Mav_Landed_State use
     (Mav_Landed_State_Undefined => 0,
      Mav_Landed_State_On_Ground => 1,
      Mav_Landed_State_In_Air    => 2,
      Mav_Landed_State_Takeoff   => 3,
      Mav_Landed_State_Landing   => 4);

   type Adsb_Altitude_Type is
     (Adsb_Altitude_Type_Pressure_Qnh, Adsb_Altitude_Type_Geometric)
     with Size => 8;
   for Adsb_Altitude_Type use
     (Adsb_Altitude_Type_Pressure_Qnh => 0,
      Adsb_Altitude_Type_Geometric    => 1);

   type Adsb_Emitter_Type is
     (Adsb_Emitter_Type_No_Info, Adsb_Emitter_Type_Light, 
      Adsb_Emitter_Type_Small, Adsb_Emitter_Type_Large, 
      Adsb_Emitter_Type_High_Vortex_Large, Adsb_Emitter_Type_Heavy, 
      Adsb_Emitter_Type_Highly_Manuv, Adsb_Emitter_Type_Rotocraft, 
      Adsb_Emitter_Type_Unassigned, Adsb_Emitter_Type_Glider, 
      Adsb_Emitter_Type_Lighter_Air, Adsb_Emitter_Type_Parachute, 
      Adsb_Emitter_Type_Ultra_Light, Adsb_Emitter_Type_Unassigned2, 
      Adsb_Emitter_Type_Uav, Adsb_Emitter_Type_Space, 
      Adsb_Emitter_Type_Unassgined3, Adsb_Emitter_Type_Emergency_Surface, 
      Adsb_Emitter_Type_Service_Surface, Adsb_Emitter_Type_Point_Obstacle)
     with Size => 8;
   for Adsb_Emitter_Type use
     (Adsb_Emitter_Type_No_Info           => 0,
      Adsb_Emitter_Type_Light             => 1,
      Adsb_Emitter_Type_Small             => 2,
      Adsb_Emitter_Type_Large             => 3,
      Adsb_Emitter_Type_High_Vortex_Large => 4,
      Adsb_Emitter_Type_Heavy             => 5,
      Adsb_Emitter_Type_Highly_Manuv      => 6,
      Adsb_Emitter_Type_Rotocraft         => 7,
      Adsb_Emitter_Type_Unassigned        => 8,
      Adsb_Emitter_Type_Glider            => 9,
      Adsb_Emitter_Type_Lighter_Air       => 10,
      Adsb_Emitter_Type_Parachute         => 11,
      Adsb_Emitter_Type_Ultra_Light       => 12,
      Adsb_Emitter_Type_Unassigned2       => 13,
      Adsb_Emitter_Type_Uav               => 14,
      Adsb_Emitter_Type_Space             => 15,
      Adsb_Emitter_Type_Unassgined3       => 16,
      Adsb_Emitter_Type_Emergency_Surface => 17,
      Adsb_Emitter_Type_Service_Surface   => 18,
      Adsb_Emitter_Type_Point_Obstacle    => 19);

   type Adsb_Flags is record
      Adsb_Flags_Valid_Coords            : Boolean := False;
      Adsb_Flags_Valid_Altitude          : Boolean := False;
      Adsb_Flags_Valid_Heading           : Boolean := False;
      Adsb_Flags_Valid_Velocity          : Boolean := False;
      Adsb_Flags_Valid_Callsign          : Boolean := False;
      Adsb_Flags_Valid_Squawk            : Boolean := False;
      Adsb_Flags_Simulated               : Boolean := False;
      Adsb_Flags_Vertical_Velocity_Valid : Boolean := False;
      Adsb_Flags_Baro_Valid              : Boolean := False;
      Adsb_Flags_Source_Uat              : Boolean := False;
   end record with Size => 16;
   for Adsb_Flags use record
      Adsb_Flags_Valid_Coords            at 0 range 0 .. 0;
      Adsb_Flags_Valid_Altitude          at 0 range 1 .. 1;
      Adsb_Flags_Valid_Heading           at 0 range 2 .. 2;
      Adsb_Flags_Valid_Velocity          at 0 range 3 .. 3;
      Adsb_Flags_Valid_Callsign          at 0 range 4 .. 4;
      Adsb_Flags_Valid_Squawk            at 0 range 5 .. 5;
      Adsb_Flags_Simulated               at 0 range 6 .. 6;
      Adsb_Flags_Vertical_Velocity_Valid at 0 range 7 .. 7;
      Adsb_Flags_Baro_Valid              at 0 range 8 .. 8;
      Adsb_Flags_Source_Uat              at 0 range 15 .. 15;
   end record;

   type Estimator_Status_Flags is record
      Estimator_Attitude           : Boolean := False;
      Estimator_Velocity_Horiz     : Boolean := False;
      Estimator_Velocity_Vert      : Boolean := False;
      Estimator_Pos_Horiz_Rel      : Boolean := False;
      Estimator_Pos_Horiz_Abs      : Boolean := False;
      Estimator_Pos_Vert_Abs       : Boolean := False;
      Estimator_Pos_Vert_Agl       : Boolean := False;
      Estimator_Const_Pos_Mode     : Boolean := False;
      Estimator_Pred_Pos_Horiz_Rel : Boolean := False;
      Estimator_Pred_Pos_Horiz_Abs : Boolean := False;
      Estimator_Gps_Glitch         : Boolean := False;
      Estimator_Accel_Error        : Boolean := False;
   end record with Size => 16;
   for Estimator_Status_Flags use record
      Estimator_Attitude           at 0 range 0 .. 0;
      Estimator_Velocity_Horiz     at 0 range 1 .. 1;
      Estimator_Velocity_Vert      at 0 range 2 .. 2;
      Estimator_Pos_Horiz_Rel      at 0 range 3 .. 3;
      Estimator_Pos_Horiz_Abs      at 0 range 4 .. 4;
      Estimator_Pos_Vert_Abs       at 0 range 5 .. 5;
      Estimator_Pos_Vert_Agl       at 0 range 6 .. 6;
      Estimator_Const_Pos_Mode     at 0 range 7 .. 7;
      Estimator_Pred_Pos_Horiz_Rel at 0 range 8 .. 8;
      Estimator_Pred_Pos_Horiz_Abs at 0 range 9 .. 9;
      Estimator_Gps_Glitch         at 0 range 10 .. 10;
      Estimator_Accel_Error        at 0 range 11 .. 11;
   end record;

   type Gps_Input_Ignore_Flags is record
      Gps_Input_Ignore_Flag_Alt                 : Boolean := False;
      Gps_Input_Ignore_Flag_Hdop                : Boolean := False;
      Gps_Input_Ignore_Flag_Vdop                : Boolean := False;
      Gps_Input_Ignore_Flag_Vel_Horiz           : Boolean := False;
      Gps_Input_Ignore_Flag_Vel_Vert            : Boolean := False;
      Gps_Input_Ignore_Flag_Speed_Accuracy      : Boolean := False;
      Gps_Input_Ignore_Flag_Horizontal_Accuracy : Boolean := False;
      Gps_Input_Ignore_Flag_Vertical_Accuracy   : Boolean := False;
   end record with Size => 16;
   for Gps_Input_Ignore_Flags use record
      Gps_Input_Ignore_Flag_Alt                 at 0 range 0 .. 0;
      Gps_Input_Ignore_Flag_Hdop                at 0 range 1 .. 1;
      Gps_Input_Ignore_Flag_Vdop                at 0 range 2 .. 2;
      Gps_Input_Ignore_Flag_Vel_Horiz           at 0 range 3 .. 3;
      Gps_Input_Ignore_Flag_Vel_Vert            at 0 range 4 .. 4;
      Gps_Input_Ignore_Flag_Speed_Accuracy      at 0 range 5 .. 5;
      Gps_Input_Ignore_Flag_Horizontal_Accuracy at 0 range 6 .. 6;
      Gps_Input_Ignore_Flag_Vertical_Accuracy   at 0 range 7 .. 7;
   end record;

   type Mav_Collision_Action is
     (Mav_Collision_Action_None, Mav_Collision_Action_Report, 
      Mav_Collision_Action_Ascend_Or_Descend, 
      Mav_Collision_Action_Move_Horizontally, 
      Mav_Collision_Action_Move_Perpendicular, Mav_Collision_Action_Rtl, 
      Mav_Collision_Action_Hover) with Size => 8;
   for Mav_Collision_Action use
     (Mav_Collision_Action_None               => 0,
      Mav_Collision_Action_Report             => 1,
      Mav_Collision_Action_Ascend_Or_Descend  => 2,
      Mav_Collision_Action_Move_Horizontally  => 3,
      Mav_Collision_Action_Move_Perpendicular => 4,
      Mav_Collision_Action_Rtl                => 5,
      Mav_Collision_Action_Hover              => 6);

   type Mav_Collision_Threat_Level is
     (Mav_Collision_Threat_Level_None, Mav_Collision_Threat_Level_Low, 
      Mav_Collision_Threat_Level_High) with Size => 8;
   for Mav_Collision_Threat_Level use
     (Mav_Collision_Threat_Level_None => 0,
      Mav_Collision_Threat_Level_Low  => 1,
      Mav_Collision_Threat_Level_High => 2);

   type Mav_Collision_Src is
     (Mav_Collision_Src_Adsb, Mav_Collision_Src_Mavlink_Gps_Global_Int)
     with Size => 8;
   for Mav_Collision_Src use
     (Mav_Collision_Src_Adsb                   => 0,
      Mav_Collision_Src_Mavlink_Gps_Global_Int => 1);

   type Gps_Fix_Type is
     (Gps_Fix_Type_No_Gps, Gps_Fix_Type_No_Fix, Gps_Fix_Type_2D_Fix, 
      Gps_Fix_Type_3D_Fix, Gps_Fix_Type_Dgps, Gps_Fix_Type_Rtk_Float, 
      Gps_Fix_Type_Rtk_Fixed, Gps_Fix_Type_Static, Gps_Fix_Type_Ppp)
     with Size => 8;
   for Gps_Fix_Type use
     (Gps_Fix_Type_No_Gps    => 0,
      Gps_Fix_Type_No_Fix    => 1,
      Gps_Fix_Type_2D_Fix    => 2,
      Gps_Fix_Type_3D_Fix    => 3,
      Gps_Fix_Type_Dgps      => 4,
      Gps_Fix_Type_Rtk_Float => 5,
      Gps_Fix_Type_Rtk_Fixed => 6,
      Gps_Fix_Type_Static    => 7,
      Gps_Fix_Type_Ppp       => 8);

   type Rtk_Baseline_Coordinate_System is
     (Rtk_Baseline_Coordinate_System_Ecef, Rtk_Baseline_Coordinate_System_Ned)
     with Size => 8;
   for Rtk_Baseline_Coordinate_System use
     (Rtk_Baseline_Coordinate_System_Ecef => 0,
      Rtk_Baseline_Coordinate_System_Ned  => 1);

   type Position_Target_Typemask is record
      Position_Target_Typemask_X_Ignore        : Boolean := False;
      Position_Target_Typemask_Y_Ignore        : Boolean := False;
      Position_Target_Typemask_Z_Ignore        : Boolean := False;
      Position_Target_Typemask_Vx_Ignore       : Boolean := False;
      Position_Target_Typemask_Vy_Ignore       : Boolean := False;
      Position_Target_Typemask_Vz_Ignore       : Boolean := False;
      Position_Target_Typemask_Ax_Ignore       : Boolean := False;
      Position_Target_Typemask_Ay_Ignore       : Boolean := False;
      Position_Target_Typemask_Az_Ignore       : Boolean := False;
      Position_Target_Typemask_Force_Set       : Boolean := False;
      Position_Target_Typemask_Yaw_Ignore      : Boolean := False;
      Position_Target_Typemask_Yaw_Rate_Ignore : Boolean := False;
   end record with Size => 16;
   for Position_Target_Typemask use record
      Position_Target_Typemask_X_Ignore        at 0 range 0 .. 0;
      Position_Target_Typemask_Y_Ignore        at 0 range 1 .. 1;
      Position_Target_Typemask_Z_Ignore        at 0 range 2 .. 2;
      Position_Target_Typemask_Vx_Ignore       at 0 range 3 .. 3;
      Position_Target_Typemask_Vy_Ignore       at 0 range 4 .. 4;
      Position_Target_Typemask_Vz_Ignore       at 0 range 5 .. 5;
      Position_Target_Typemask_Ax_Ignore       at 0 range 6 .. 6;
      Position_Target_Typemask_Ay_Ignore       at 0 range 7 .. 7;
      Position_Target_Typemask_Az_Ignore       at 0 range 8 .. 8;
      Position_Target_Typemask_Force_Set       at 0 range 9 .. 9;
      Position_Target_Typemask_Yaw_Ignore      at 0 range 10 .. 10;
      Position_Target_Typemask_Yaw_Rate_Ignore at 0 range 11 .. 11;
   end record;

   type Attitude_Target_Typemask is record
      Attitude_Target_Typemask_Body_Roll_Rate_Ignore  : Boolean := False;
      Attitude_Target_Typemask_Body_Pitch_Rate_Ignore : Boolean := False;
      Attitude_Target_Typemask_Body_Yaw_Rate_Ignore   : Boolean := False;
      Attitude_Target_Typemask_Thrust_Body_Set        : Boolean := False;
      Attitude_Target_Typemask_Throttle_Ignore        : Boolean := False;
      Attitude_Target_Typemask_Attitude_Ignore        : Boolean := False;
   end record with Size => 8;
   for Attitude_Target_Typemask use record
      Attitude_Target_Typemask_Body_Roll_Rate_Ignore  at 0 range 0 .. 0;
      Attitude_Target_Typemask_Body_Pitch_Rate_Ignore at 0 range 1 .. 1;
      Attitude_Target_Typemask_Body_Yaw_Rate_Ignore   at 0 range 2 .. 2;
      Attitude_Target_Typemask_Thrust_Body_Set        at 0 range 5 .. 5;
      Attitude_Target_Typemask_Throttle_Ignore        at 0 range 6 .. 6;
      Attitude_Target_Typemask_Attitude_Ignore        at 0 range 7 .. 7;
   end record;

   type Mag_Cal_Status is
     (Mag_Cal_Not_Started, Mag_Cal_Waiting_To_Start, Mag_Cal_Running_Step_One, 
      Mag_Cal_Running_Step_Two, Mag_Cal_Success, Mag_Cal_Failed, 
      Mag_Cal_Bad_Orientation, Mag_Cal_Bad_Radius) with Size => 8;
   for Mag_Cal_Status use
     (Mag_Cal_Not_Started      => 0,
      Mag_Cal_Waiting_To_Start => 1,
      Mag_Cal_Running_Step_One => 2,
      Mag_Cal_Running_Step_Two => 3,
      Mag_Cal_Success          => 4,
      Mag_Cal_Failed           => 5,
      Mag_Cal_Bad_Orientation  => 6,
      Mag_Cal_Bad_Radius       => 7);

   type Hil_Sensor_Updated_Flags is record
      Hil_Sensor_Updated_Xacc          : Boolean := False;
      Hil_Sensor_Updated_Yacc          : Boolean := False;
      Hil_Sensor_Updated_Zacc          : Boolean := False;
      Hil_Sensor_Updated_Xgyro         : Boolean := False;
      Hil_Sensor_Updated_Ygyro         : Boolean := False;
      Hil_Sensor_Updated_Zgyro         : Boolean := False;
      Hil_Sensor_Updated_Xmag          : Boolean := False;
      Hil_Sensor_Updated_Ymag          : Boolean := False;
      Hil_Sensor_Updated_Zmag          : Boolean := False;
      Hil_Sensor_Updated_Abs_Pressure  : Boolean := False;
      Hil_Sensor_Updated_Diff_Pressure : Boolean := False;
      Hil_Sensor_Updated_Pressure_Alt  : Boolean := False;
      Hil_Sensor_Updated_Temperature   : Boolean := False;
      Hil_Sensor_Updated_Reset         : Boolean := False;
   end record with Size => 32;
   for Hil_Sensor_Updated_Flags use record
      Hil_Sensor_Updated_Xacc          at 0 range 0 .. 0;
      Hil_Sensor_Updated_Yacc          at 0 range 1 .. 1;
      Hil_Sensor_Updated_Zacc          at 0 range 2 .. 2;
      Hil_Sensor_Updated_Xgyro         at 0 range 3 .. 3;
      Hil_Sensor_Updated_Ygyro         at 0 range 4 .. 4;
      Hil_Sensor_Updated_Zgyro         at 0 range 5 .. 5;
      Hil_Sensor_Updated_Xmag          at 0 range 6 .. 6;
      Hil_Sensor_Updated_Ymag          at 0 range 7 .. 7;
      Hil_Sensor_Updated_Zmag          at 0 range 8 .. 8;
      Hil_Sensor_Updated_Abs_Pressure  at 0 range 9 .. 9;
      Hil_Sensor_Updated_Diff_Pressure at 0 range 10 .. 10;
      Hil_Sensor_Updated_Pressure_Alt  at 0 range 11 .. 11;
      Hil_Sensor_Updated_Temperature   at 0 range 12 .. 12;
      Hil_Sensor_Updated_Reset         at 0 range 31 .. 31;
   end record;

   type Highres_Imu_Updated_Flags is record
      Highres_Imu_Updated_Xacc          : Boolean := False;
      Highres_Imu_Updated_Yacc          : Boolean := False;
      Highres_Imu_Updated_Zacc          : Boolean := False;
      Highres_Imu_Updated_Xgyro         : Boolean := False;
      Highres_Imu_Updated_Ygyro         : Boolean := False;
      Highres_Imu_Updated_Zgyro         : Boolean := False;
      Highres_Imu_Updated_Xmag          : Boolean := False;
      Highres_Imu_Updated_Ymag          : Boolean := False;
      Highres_Imu_Updated_Zmag          : Boolean := False;
      Highres_Imu_Updated_Abs_Pressure  : Boolean := False;
      Highres_Imu_Updated_Diff_Pressure : Boolean := False;
      Highres_Imu_Updated_Pressure_Alt  : Boolean := False;
      Highres_Imu_Updated_Temperature   : Boolean := False;
   end record with Size => 16;
   for Highres_Imu_Updated_Flags use record
      Highres_Imu_Updated_Xacc          at 0 range 0 .. 0;
      Highres_Imu_Updated_Yacc          at 0 range 1 .. 1;
      Highres_Imu_Updated_Zacc          at 0 range 2 .. 2;
      Highres_Imu_Updated_Xgyro         at 0 range 3 .. 3;
      Highres_Imu_Updated_Ygyro         at 0 range 4 .. 4;
      Highres_Imu_Updated_Zgyro         at 0 range 5 .. 5;
      Highres_Imu_Updated_Xmag          at 0 range 6 .. 6;
      Highres_Imu_Updated_Ymag          at 0 range 7 .. 7;
      Highres_Imu_Updated_Zmag          at 0 range 8 .. 8;
      Highres_Imu_Updated_Abs_Pressure  at 0 range 9 .. 9;
      Highres_Imu_Updated_Diff_Pressure at 0 range 10 .. 10;
      Highres_Imu_Updated_Pressure_Alt  at 0 range 11 .. 11;
      Highres_Imu_Updated_Temperature   at 0 range 12 .. 12;
   end record;

   type Mav_Autopilot is
     (Mav_Autopilot_Generic, Mav_Autopilot_Reserved, Mav_Autopilot_Slugs, 
      Mav_Autopilot_Ardupilotmega, Mav_Autopilot_Openpilot, 
      Mav_Autopilot_Generic_Waypoints_Only, 
      Mav_Autopilot_Generic_Waypoints_And_Simple_Navigation_Only, 
      Mav_Autopilot_Generic_Mission_Full, Mav_Autopilot_Invalid, 
      Mav_Autopilot_Ppz, Mav_Autopilot_Udb, Mav_Autopilot_Fp, 
      Mav_Autopilot_Px4, Mav_Autopilot_Smaccmpilot, Mav_Autopilot_Autoquad, 
      Mav_Autopilot_Armazila, Mav_Autopilot_Aerob, Mav_Autopilot_Asluav, 
      Mav_Autopilot_Smartap, Mav_Autopilot_Airrails, Mav_Autopilot_Reflex)
     with Size => 8;
   for Mav_Autopilot use
     (Mav_Autopilot_Generic                                      => 0,
      Mav_Autopilot_Reserved                                     => 1,
      Mav_Autopilot_Slugs                                        => 2,
      Mav_Autopilot_Ardupilotmega                                => 3,
      Mav_Autopilot_Openpilot                                    => 4,
      Mav_Autopilot_Generic_Waypoints_Only                       => 5,
      Mav_Autopilot_Generic_Waypoints_And_Simple_Navigation_Only => 6,
      Mav_Autopilot_Generic_Mission_Full                         => 7,
      Mav_Autopilot_Invalid                                      => 8,
      Mav_Autopilot_Ppz                                          => 9,
      Mav_Autopilot_Udb                                          => 10,
      Mav_Autopilot_Fp                                           => 11,
      Mav_Autopilot_Px4                                          => 12,
      Mav_Autopilot_Smaccmpilot                                  => 13,
      Mav_Autopilot_Autoquad                                     => 14,
      Mav_Autopilot_Armazila                                     => 15,
      Mav_Autopilot_Aerob                                        => 16,
      Mav_Autopilot_Asluav                                       => 17,
      Mav_Autopilot_Smartap                                      => 18,
      Mav_Autopilot_Airrails                                     => 19,
      Mav_Autopilot_Reflex                                       => 20);

   type Mav_Type is
     (Mav_Type_Generic, Mav_Type_Fixed_Wing, Mav_Type_Quadrotor, 
      Mav_Type_Coaxial, Mav_Type_Helicopter, Mav_Type_Antenna_Tracker, 
      Mav_Type_Gcs, Mav_Type_Airship, Mav_Type_Free_Balloon, Mav_Type_Rocket, 
      Mav_Type_Ground_Rover, Mav_Type_Surface_Boat, Mav_Type_Submarine, 
      Mav_Type_Hexarotor, Mav_Type_Octorotor, Mav_Type_Tricopter, 
      Mav_Type_Flapping_Wing, Mav_Type_Kite, Mav_Type_Onboard_Controller, 
      Mav_Type_Vtol_Tailsitter_Duorotor, Mav_Type_Vtol_Tailsitter_Quadrotor, 
      Mav_Type_Vtol_Tiltrotor, Mav_Type_Vtol_Fixedrotor, 
      Mav_Type_Vtol_Tailsitter, Mav_Type_Vtol_Tiltwing, 
      Mav_Type_Vtol_Reserved5, Mav_Type_Gimbal, Mav_Type_Adsb, 
      Mav_Type_Parafoil, Mav_Type_Dodecarotor, Mav_Type_Camera, 
      Mav_Type_Charging_Station, Mav_Type_Flarm, Mav_Type_Servo, 
      Mav_Type_Odid, Mav_Type_Decarotor, Mav_Type_Battery, Mav_Type_Parachute, 
      Mav_Type_Log, Mav_Type_Osd, Mav_Type_Imu, Mav_Type_Gps, Mav_Type_Winch, 
      Mav_Type_Generic_Multirotor, Mav_Type_Illuminator) with Size => 8;
   for Mav_Type use
     (Mav_Type_Generic                   => 0,
      Mav_Type_Fixed_Wing                => 1,
      Mav_Type_Quadrotor                 => 2,
      Mav_Type_Coaxial                   => 3,
      Mav_Type_Helicopter                => 4,
      Mav_Type_Antenna_Tracker           => 5,
      Mav_Type_Gcs                       => 6,
      Mav_Type_Airship                   => 7,
      Mav_Type_Free_Balloon              => 8,
      Mav_Type_Rocket                    => 9,
      Mav_Type_Ground_Rover              => 10,
      Mav_Type_Surface_Boat              => 11,
      Mav_Type_Submarine                 => 12,
      Mav_Type_Hexarotor                 => 13,
      Mav_Type_Octorotor                 => 14,
      Mav_Type_Tricopter                 => 15,
      Mav_Type_Flapping_Wing             => 16,
      Mav_Type_Kite                      => 17,
      Mav_Type_Onboard_Controller        => 18,
      Mav_Type_Vtol_Tailsitter_Duorotor  => 19,
      Mav_Type_Vtol_Tailsitter_Quadrotor => 20,
      Mav_Type_Vtol_Tiltrotor            => 21,
      Mav_Type_Vtol_Fixedrotor           => 22,
      Mav_Type_Vtol_Tailsitter           => 23,
      Mav_Type_Vtol_Tiltwing             => 24,
      Mav_Type_Vtol_Reserved5            => 25,
      Mav_Type_Gimbal                    => 26,
      Mav_Type_Adsb                      => 27,
      Mav_Type_Parafoil                  => 28,
      Mav_Type_Dodecarotor               => 29,
      Mav_Type_Camera                    => 30,
      Mav_Type_Charging_Station          => 31,
      Mav_Type_Flarm                     => 32,
      Mav_Type_Servo                     => 33,
      Mav_Type_Odid                      => 34,
      Mav_Type_Decarotor                 => 35,
      Mav_Type_Battery                   => 36,
      Mav_Type_Parachute                 => 37,
      Mav_Type_Log                       => 38,
      Mav_Type_Osd                       => 39,
      Mav_Type_Imu                       => 40,
      Mav_Type_Gps                       => 41,
      Mav_Type_Winch                     => 42,
      Mav_Type_Generic_Multirotor        => 43,
      Mav_Type_Illuminator               => 44);

   type Mav_Mode_Flag is record
      Mav_Mode_Flag_Custom_Mode_Enabled  : Boolean := False;
      Mav_Mode_Flag_Test_Enabled         : Boolean := False;
      Mav_Mode_Flag_Auto_Enabled         : Boolean := False;
      Mav_Mode_Flag_Guided_Enabled       : Boolean := False;
      Mav_Mode_Flag_Stabilize_Enabled    : Boolean := False;
      Mav_Mode_Flag_Hil_Enabled          : Boolean := False;
      Mav_Mode_Flag_Manual_Input_Enabled : Boolean := False;
      Mav_Mode_Flag_Safety_Armed         : Boolean := False;
   end record with Size => 8;
   for Mav_Mode_Flag use record
      Mav_Mode_Flag_Custom_Mode_Enabled  at 0 range 0 .. 0;
      Mav_Mode_Flag_Test_Enabled         at 0 range 1 .. 1;
      Mav_Mode_Flag_Auto_Enabled         at 0 range 2 .. 2;
      Mav_Mode_Flag_Guided_Enabled       at 0 range 3 .. 3;
      Mav_Mode_Flag_Stabilize_Enabled    at 0 range 4 .. 4;
      Mav_Mode_Flag_Hil_Enabled          at 0 range 5 .. 5;
      Mav_Mode_Flag_Manual_Input_Enabled at 0 range 6 .. 6;
      Mav_Mode_Flag_Safety_Armed         at 0 range 7 .. 7;
   end record;

   type Mav_State is
     (Mav_State_Uninit, Mav_State_Boot, Mav_State_Calibrating, 
      Mav_State_Standby, Mav_State_Active, Mav_State_Critical, 
      Mav_State_Emergency, Mav_State_Poweroff, Mav_State_Flight_Termination)
     with Size => 8;
   for Mav_State use
     (Mav_State_Uninit             => 0,
      Mav_State_Boot               => 1,
      Mav_State_Calibrating        => 2,
      Mav_State_Standby            => 3,
      Mav_State_Active             => 4,
      Mav_State_Critical           => 5,
      Mav_State_Emergency          => 6,
      Mav_State_Poweroff           => 7,
      Mav_State_Flight_Termination => 8);

end MAVLink.Types;