-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Settings of a camera. Can be requested with a MAV_CMD_REQUEST_MESSAGE
--  command.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Camera_Settingses is

   pragma Pure;

   type Camera_Settings is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Mode_Id          : Camera_Mode;
      --  Camera mode
      Zoomlevel        : Raw_Float :=
        To_Raw (0.0);
      --  Current zoom level as a percentage of the full range (0.0 to 100.0,
      --  NaN if not known)
      Focuslevel       : Raw_Float :=
        To_Raw (0.0);
      --  Current focus level as a percentage of the full range (0.0 to 100.0,
      --  NaN if not known)
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0
      --  if the component is a MAVLink camera (with its own component id).
   end record;

   for Camera_Settings use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Mode_Id          at 4  range 0 .. 7;
      Zoomlevel        at 5  range 0 .. 31;
      Focuslevel       at 9  range 0 .. 31;
      Camera_Device_Id at 13 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Settings;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Settings;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Settings;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Settings;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Camera_Settings;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Settings;
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
     (Message : Camera_Settings;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Settings;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Camera_Settingses;
