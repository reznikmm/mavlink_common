-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Streamed from drone to report progress of terrain map download (initiated
--  by TERRAIN_REQUEST), or sent as a response to a TERRAIN_CHECK request. See
--  terrain protocol docs: https://mavlink.io/en/services/terrain.html

pragma Ada_2022;

package MAVLink.V1.Common.Terrain_Reports is

   pragma Pure;

   Terrain_Report_Len : constant Interfaces.Unsigned_8 := 22;

   type Terrain_Report is record
      Lat            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude
      Lon            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude
      Spacing        : Interfaces.Unsigned_16;
      --  grid spacing (zero if terrain at this location unavailable)
      Terrain_Height : Raw_Float;
      --  Units: [m]
      --  Terrain height MSL
      Current_Height : Raw_Float;
      --  Units: [m]
      --  Current vehicle height above lat/lon terrain height
      Pending        : Interfaces.Unsigned_16;
      --  Number of 4x4 terrain blocks waiting to be received or read from
      --  disk
      Loaded         : Interfaces.Unsigned_16;
      --  Number of 4x4 terrain blocks in memory
   end record;

   for Terrain_Report use record
      Lat            at 0  range 0 .. 31;
      Lon            at 4  range 0 .. 31;
      Terrain_Height at 8  range 0 .. 31;
      Current_Height at 12 range 0 .. 31;
      Spacing        at 16 range 0 .. 15;
      Pending        at 18 range 0 .. 15;
      Loaded         at 20 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Terrain_Report;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Report;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Report;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Terrain_Report;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Terrain_Report;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Terrain_Report;
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

end MAVLink.V1.Common.Terrain_Reports;
