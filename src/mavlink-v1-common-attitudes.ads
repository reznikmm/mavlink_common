-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The attitude in the aeronautical frame (right-handed, Z-down, Y-right,
--  X-front, ZYX, intrinsic).

pragma Ada_2022;

package MAVLink.V1.Common.Attitudes is

   pragma Pure;

   Attitude_Len : constant Interfaces.Unsigned_8 := 28;

   type Attitude is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Roll         : Raw_Float;
      --  Units: [rad]
      --  Roll angle (-pi..+pi)
      Pitch        : Raw_Float;
      --  Units: [rad]
      --  Pitch angle (-pi..+pi)
      Yaw          : Raw_Float;
      --  Units: [rad]
      --  Yaw angle (-pi..+pi)
      Rollspeed    : Raw_Float;
      --  Units: [rad/s]
      --  Roll angular speed
      Pitchspeed   : Raw_Float;
      --  Units: [rad/s]
      --  Pitch angular speed
      Yawspeed     : Raw_Float;
      --  Units: [rad/s]
      --  Yaw angular speed
   end record;

   for Attitude use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Roll         at 4  range 0 .. 31;
      Pitch        at 8  range 0 .. 31;
      Yaw          at 12 range 0 .. 31;
      Rollspeed    at 16 range 0 .. 31;
      Pitchspeed   at 20 range 0 .. 31;
      Yawspeed     at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Attitude;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Attitude;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Attitudes;
