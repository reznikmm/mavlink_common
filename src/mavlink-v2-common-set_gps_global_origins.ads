-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sets the GPS coordinates of the vehicle local origin (0,0,0) position.
--  Vehicle should emit GPS_GLOBAL_ORIGIN irrespective of whether the origin
--  is changed. This enables transform between the local coordinate frame and
--  the global (GPS) coordinate frame, which may be necessary when (for
--  example) indoor and outdoor settings are connected and the MAV should move
--  from in- to outdoor.

pragma Ada_2022;

package MAVLink.V2.Common.Set_Gps_Global_Origins is

   pragma Pure;

   type Set_Gps_Global_Origin is record
      Target_System : Interfaces.Unsigned_8;
      --  System ID
      Latitude      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84)
      Longitude     : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84)
      Altitude      : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up.
      Time_Usec     : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
   end record;

   for Set_Gps_Global_Origin use record
      Latitude      at 0  range 0 .. 31;
      Longitude     at 4  range 0 .. 31;
      Altitude      at 8  range 0 .. 31;
      Target_System at 12 range 0 .. 7;
      Time_Usec     at 13 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Set_Gps_Global_Origin;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Gps_Global_Origin;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Gps_Global_Origin;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Gps_Global_Origin;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Set_Gps_Global_Origin;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Gps_Global_Origin;
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
     (Message : Set_Gps_Global_Origin;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Set_Gps_Global_Origin;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Set_Gps_Global_Origins;
