-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Setpoint in roll, pitch, yaw and thrust from the operator

pragma Ada_2022;

package MAVLink.V1.Common.Manual_Setpoints is

   pragma Pure;

   Manual_Setpoint_Len : constant Interfaces.Unsigned_8 := 22;

   type Manual_Setpoint is record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Roll                   : Raw_Float;
      --  Units: [rad/s]
      --  Desired roll rate
      Pitch                  : Raw_Float;
      --  Units: [rad/s]
      --  Desired pitch rate
      Yaw                    : Raw_Float;
      --  Units: [rad/s]
      --  Desired yaw rate
      Thrust                 : Raw_Float;
      --  Collective thrust, normalized to 0 .. 1
      Mode_Switch            : Interfaces.Unsigned_8;
      --  Flight mode switch position, 0.. 255
      Manual_Override_Switch : Interfaces.Unsigned_8;
      --  Override mode switch position, 0.. 255
   end record;

   for Manual_Setpoint use record
      Time_Boot_Ms           at 0  range 0 .. 31;
      Roll                   at 4  range 0 .. 31;
      Pitch                  at 8  range 0 .. 31;
      Yaw                    at 12 range 0 .. 31;
      Thrust                 at 16 range 0 .. 31;
      Mode_Switch            at 20 range 0 .. 7;
      Manual_Override_Switch at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Manual_Setpoint;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Manual_Setpoint;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Manual_Setpoint;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Manual_Setpoint;
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

end MAVLink.V1.Common.Manual_Setpoints;
