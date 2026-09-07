-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Set the system mode, as defined by enum MAV_MODE_FLAG. There is no target
--  component id as the mode is by definition for the overall aircraft, not
--  only for one component.

pragma Ada_2022;

with MAVLink.V1.Minimal.Types; use MAVLink.V1.Minimal.Types;

package MAVLink.V1.Common.Set_Modes is

   pragma Pure;

   Set_Mode_Len : constant Interfaces.Unsigned_8 := 6;

   type Set_Mode is record
      Target_System : Interfaces.Unsigned_8;
      --  The system setting the mode
      Base_Mode     : Mav_Mode_Flag;
      --  The new base mode.
      Custom_Mode   : Interfaces.Unsigned_32;
      --  The new autopilot-specific mode. This field can be ignored by an
      --  autopilot.
   end record;

   for Set_Mode use record
      Custom_Mode   at 0 range 0 .. 31;
      Target_System at 4 range 0 .. 7;
      Base_Mode     at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Mode;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Mode;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Mode;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Mode;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Set_Mode;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Mode;
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

end MAVLink.V1.Common.Set_Modes;
