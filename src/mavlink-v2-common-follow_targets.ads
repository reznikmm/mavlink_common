-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Current motion information from a designated system

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Follow_Targets is

   pragma Pure;

   type Follow_Target is record
      Timestamp        : Interfaces.Unsigned_64;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Est_Capabilities : Follow_Target_Cap_Flags;
      --  Bitmask indicating which fields in this message contain valid data.
      Lat              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84)
      Lon              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84)
      Alt              : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL)
      Vel              : Short_Float_Array (1 .. 3) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s]
      --  Target velocity in MAV_FRAME_LOCAL_NED frame. (0,0,0) for unknown.
      Acc              : Short_Float_Array (1 .. 3) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s/s]
      --  Target linear acceleration in MAV_FRAME_LOCAL_NED frame. (0,0,0) for
      --  unknown.
      Attitude_Q       : Short_Float_Array (1 .. 4) :=
        [others => To_Raw (0.0)];
      --  Target orientation as a quaternion rotating from MAV_FRAME_BODY_FRD
      --  to MAV_FRAME_LOCAL_NED (w, x, y, z order, zero-rotation is [1, 0, 0,
      --  0]). (0, 0, 0, 0) for unknown.
      Rates            : Short_Float_Array (1 .. 3) :=
        [others => To_Raw (0.0)];
      --  Units: [rad/s]
      --  Target angular rates (roll, pitch, yaw) in MAV_FRAME_BODY_FRD frame.
      --  (0,0,0) for unknown.
      Position_Cov     : Short_Float_Array (1 .. 3);
      --  eph epv
      Custom_State     : Interfaces.Unsigned_64;
      --  button states or switches of a tracker device
   end record;

   for Follow_Target use record
      Timestamp        at 0  range 0 .. 63;
      Custom_State     at 8  range 0 .. 63;
      Lat              at 16 range 0 .. 31;
      Lon              at 20 range 0 .. 31;
      Alt              at 24 range 0 .. 31;
      Vel              at 28 range 0 .. 95;
      Acc              at 40 range 0 .. 95;
      Attitude_Q       at 52 range 0 .. 127;
      Rates            at 68 range 0 .. 95;
      Position_Cov     at 80 range 0 .. 95;
      Est_Capabilities at 92 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Follow_Target;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Follow_Target;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Follow_Target;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Follow_Target;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Follow_Targets;
