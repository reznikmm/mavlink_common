-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Data for injecting into the onboard GPS (used for DGPS)

pragma Ada_2022;

package MAVLink.V1.Common.Gps_Inject_Datas is

   pragma Pure;

   Gps_Inject_Data_Len : constant Interfaces.Unsigned_8 := 113;

   type Gps_Inject_Data is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Len              : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Data length
      Data             : Unsigned_8_Array (1 .. 110);
      --  Raw data (110 is enough for 12 satellites of RTCMv2)
   end record;

   for Gps_Inject_Data use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Len              at 2 range 0 .. 7;
      Data             at 3 range 0 .. 879;
   end record;

   procedure Encode
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Inject_Data;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gps_Inject_Data;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Gps_Inject_Data;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gps_Inject_Data;
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

end MAVLink.V1.Common.Gps_Inject_Datas;
