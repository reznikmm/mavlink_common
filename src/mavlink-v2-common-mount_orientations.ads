-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Orientation of a mount

pragma Ada_2022;

package MAVLink.V2.Common.Mount_Orientations is

   pragma Pure;

   type Mount_Orientation is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Roll         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Roll in global frame (set to NaN for invalid).
      Pitch        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Pitch in global frame (set to NaN for invalid).
      Yaw          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Yaw relative to vehicle (set to NaN for invalid).
      Yaw_Absolute : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Yaw in absolute frame relative to Earth's North, north is 0 (set to
      --  NaN for invalid).
   end record;

   for Mount_Orientation use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Roll         at 4  range 0 .. 31;
      Pitch        at 8  range 0 .. 31;
      Yaw          at 12 range 0 .. 31;
      Yaw_Absolute at 16 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Mount_Orientation;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mount_Orientation;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mount_Orientation;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mount_Orientation;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Mount_Orientation;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mount_Orientation;
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
     (Message : Mount_Orientation;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mount_Orientation;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Mount_Orientations;
