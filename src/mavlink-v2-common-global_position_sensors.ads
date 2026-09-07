-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reports measurement/estimate from a global position sensor. Used as
--  navigation fusion source and optionally displayed in the UI.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Global_Position_Sensors is

   pragma Pure;

   type Global_Position_Sensor is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (ID of target system, normally autopilot and ground
      --  station).
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (normally 0 for broadcast).
      Id               : Interfaces.Unsigned_8;
      --  Sensor ID
      Time_Usec        : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp of message transmission (UNIX Epoch time or time since
      --  system boot). The receiving end can infer timestamp format (since
      --  1.1.1970 or since system boot) by checking for the magnitude of the
      --  number.
      Processing_Time  : Interfaces.Unsigned_32;
      --  Units: [us]
      --  The time spent in processing the sensor data that is the basis for
      --  this position. The recipient can use this to improve time alignment
      --  of the data. This is the time between measurement (e.g. camera
      --  exposure time) and transmission of this message. Set to NaN if not
      --  known.
      Source           : Global_Position_Src;
      --  Source of position/estimate (such as GNSS, estimator, etc.)
      Flags            : Global_Position_Flags;
      --  Status flags
      Lat              : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Latitude (WGS84)
      Lon              : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Longitude (WGS84)
      Alt_Ellipsoid    : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Altitude (WGS84 elipsoid), preferred if available
      Alt              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Altitude (MSL - position-system specific value) use if no
      --  alt_ellipsoid available
      Eph              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Standard deviation of horizontal position error
      Epv              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Standard deviation of vertical position error
   end record;

   for Global_Position_Sensor use record
      Time_Usec        at 0  range 0 .. 63;
      Processing_Time  at 8  range 0 .. 31;
      Lat              at 12 range 0 .. 31;
      Lon              at 16 range 0 .. 31;
      Alt_Ellipsoid    at 20 range 0 .. 31;
      Alt              at 24 range 0 .. 31;
      Eph              at 28 range 0 .. 31;
      Epv              at 32 range 0 .. 31;
      Target_System    at 36 range 0 .. 7;
      Target_Component at 37 range 0 .. 7;
      Id               at 38 range 0 .. 7;
      Source           at 39 range 0 .. 7;
      Flags            at 40 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Global_Position_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Global_Position_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Global_Position_Sensor;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Global_Position_Sensor;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Global_Position_Sensor;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Global_Position_Sensor;
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
     (Message : Global_Position_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Global_Position_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Global_Position_Sensors;
