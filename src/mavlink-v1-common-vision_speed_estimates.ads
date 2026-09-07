-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Speed estimate from a vision source.

pragma Ada_2022;

package MAVLink.V1.Common.Vision_Speed_Estimates is

   pragma Pure;

   Vision_Speed_Estimate_Len : constant Interfaces.Unsigned_8 := 20;

   type Vision_Speed_Estimate is record
      Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX time or time since system boot)
      X    : Raw_Float;
      --  Units: [m/s]
      --  Global X speed
      Y    : Raw_Float;
      --  Units: [m/s]
      --  Global Y speed
      Z    : Raw_Float;
      --  Units: [m/s]
      --  Global Z speed
   end record;

   for Vision_Speed_Estimate use record
      Usec at 0  range 0 .. 63;
      X    at 8  range 0 .. 31;
      Y    at 12 range 0 .. 31;
      Z    at 16 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vision_Speed_Estimate;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Vision_Speed_Estimate;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Vision_Speed_Estimate;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Vision_Speed_Estimate;
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

end MAVLink.V1.Common.Vision_Speed_Estimates;
