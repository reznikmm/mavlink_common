-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Manual (joystick) control message. This message represents movement axes
--  and button using standard joystick axes nomenclature. Unused axes can be
--  disabled and buttons states are transmitted as individual on/off bits of a
--  bitmask. For more information see
--  https://mavlink.io/en/services/manual_control.html

pragma Ada_2022;

package MAVLink.V1.Common.Manual_Controls is

   pragma Pure;

   Manual_Control_Len : constant Interfaces.Unsigned_8 := 11;

   type Manual_Control is record
      Target  : Interfaces.Unsigned_8;
      --  The system to be controlled.
      X       : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  X-axis, normalized to the range [-1000,1000]. A value of INT16_MAX
      --  indicates that this axis is invalid. Generally corresponds to
      --  forward(1000)-backward(-1000) movement on a joystick and the pitch
      --  of a vehicle.
      Y       : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Y-axis, normalized to the range [-1000,1000]. A value of INT16_MAX
      --  indicates that this axis is invalid. Generally corresponds to
      --  left(-1000)-right(1000) movement on a joystick and the roll of a
      --  vehicle.
      Z       : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Z-axis, normalized to the range [-1000,1000]. A value of INT16_MAX
      --  indicates that this axis is invalid. Generally corresponds to a
      --  separate slider movement with maximum being 1000 and minimum being
      --  -1000 on a joystick and the thrust of a vehicle. Positive values are
      --  positive thrust, negative values are negative thrust.
      R       : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  R-axis, normalized to the range [-1000,1000]. A value of INT16_MAX
      --  indicates that this axis is invalid. Generally corresponds to a
      --  twisting of the joystick, with clockwise being 1000 and
      --  counter-clockwise being -1000, and the yaw of a vehicle.
      Buttons : Interfaces.Unsigned_16;
      --  A bitfield corresponding to the joystick buttons' 0-15 current
      --  state, 1 for pressed, 0 for released. The lowest bit corresponds to
      --  Button 1.
   end record;

   for Manual_Control use record
      X       at 0  range 0 .. 15;
      Y       at 2  range 0 .. 15;
      Z       at 4  range 0 .. 15;
      R       at 6  range 0 .. 15;
      Buttons at 8  range 0 .. 15;
      Target  at 10 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Manual_Control;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Manual_Control;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Manual_Control;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Manual_Control;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Manual_Control;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Manual_Control;
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

end MAVLink.V1.Common.Manual_Controls;
