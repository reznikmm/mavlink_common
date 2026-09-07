-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  GPS sensor input message. This is a raw sensor value sent by the GPS. This
--  is NOT the global position estimate of the system.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Gps_Inputs is

   pragma Pure;

   type Gps_Input is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Gps_Id             : Interfaces.Unsigned_8;
      --  ID of the GPS for multiple GPS inputs
      Ignore_Flags       : Gps_Input_Ignore_Flags;
      --  Bitmap indicating which GPS input flags fields to ignore. All other
      --  fields must be provided.
      Time_Week_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  GPS time (from start of GPS week)
      Time_Week          : Interfaces.Unsigned_16;
      --  GPS week number
      Fix_Type           : Gps_Fix_Type;
      --  GNSS fix type
      Lat                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84)
      Lon                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84)
      Alt                : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL). Positive for up.
      Hdop               : Raw_Float :=
        To_Raw (Interfaces.IEEE_Float_32 (Interfaces.Unsigned_16'Last));
      --  GPS HDOP horizontal dilution of position (unitless). If unknown, set
      --  to: UINT16_MAX
      Vdop               : Raw_Float :=
        To_Raw (Interfaces.IEEE_Float_32 (Interfaces.Unsigned_16'Last));
      --  GPS VDOP vertical dilution of position (unitless). If unknown, set
      --  to: UINT16_MAX
      Vn                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in north direction in earth-fixed NED frame
      Ve                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in east direction in earth-fixed NED frame
      Vd                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in down direction in earth-fixed NED frame
      Speed_Accuracy     : Raw_Float;
      --  Units: [m/s]
      --  GPS speed accuracy
      Horiz_Accuracy     : Raw_Float;
      --  Units: [m]
      --  GPS horizontal accuracy
      Vert_Accuracy      : Raw_Float;
      --  Units: [m]
      --  GPS vertical accuracy
      Satellites_Visible : Interfaces.Unsigned_8;
      --  Number of satellites visible.
      Yaw                : Interfaces.Unsigned_16 :=
        0;
      --  Units: [cdeg]
      --  Yaw of vehicle relative to Earth's North, zero means not available,
      --  use 36000 for north
   end record;

   for Gps_Input use record
      Time_Usec          at 0  range 0 .. 63;
      Time_Week_Ms       at 8  range 0 .. 31;
      Lat                at 12 range 0 .. 31;
      Lon                at 16 range 0 .. 31;
      Alt                at 20 range 0 .. 31;
      Hdop               at 24 range 0 .. 31;
      Vdop               at 28 range 0 .. 31;
      Vn                 at 32 range 0 .. 31;
      Ve                 at 36 range 0 .. 31;
      Vd                 at 40 range 0 .. 31;
      Speed_Accuracy     at 44 range 0 .. 31;
      Horiz_Accuracy     at 48 range 0 .. 31;
      Vert_Accuracy      at 52 range 0 .. 31;
      Ignore_Flags       at 56 range 0 .. 15;
      Time_Week          at 58 range 0 .. 15;
      Gps_Id             at 60 range 0 .. 7;
      Fix_Type           at 61 range 0 .. 7;
      Satellites_Visible at 62 range 0 .. 7;
      Yaw                at 63 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Input;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gps_Input;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Gps_Input;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gps_Input;
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
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Gps_Inputs;
