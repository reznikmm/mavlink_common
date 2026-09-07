-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of
--  MAV X and the global coordinate frame in NED coordinates. Coordinate frame
--  is right-handed, Z-axis down (aeronautical frame, NED / north-east-down
--  convention)

pragma Ada_2022;

package MAVLink.V1.Common.Local_Position_Ned_System_Global_Offsets is

   pragma Pure;

   Local_Position_Ned_System_Global_Offset_Len : constant Interfaces.Unsigned_8 := 28;

   type Local_Position_Ned_System_Global_Offset is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      X            : Raw_Float;
      --  Units: [m]
      --  X Position
      Y            : Raw_Float;
      --  Units: [m]
      --  Y Position
      Z            : Raw_Float;
      --  Units: [m]
      --  Z Position
      Roll         : Raw_Float;
      --  Units: [rad]
      --  Roll
      Pitch        : Raw_Float;
      --  Units: [rad]
      --  Pitch
      Yaw          : Raw_Float;
      --  Units: [rad]
      --  Yaw
   end record;

   for Local_Position_Ned_System_Global_Offset use record
      Time_Boot_Ms at 0  range 0 .. 31;
      X            at 4  range 0 .. 31;
      Y            at 8  range 0 .. 31;
      Z            at 12 range 0 .. 31;
      Roll         at 16 range 0 .. 31;
      Pitch        at 20 range 0 .. 31;
      Yaw          at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Local_Position_Ned_System_Global_Offset;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Local_Position_Ned_System_Global_Offset;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Local_Position_Ned_System_Global_Offset;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Local_Position_Ned_System_Global_Offset;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Local_Position_Ned_System_Global_Offset;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Local_Position_Ned_System_Global_Offset;
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

end MAVLink.V1.Common.Local_Position_Ned_System_Global_Offsets;
