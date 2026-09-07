-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request for terrain data and terrain status. See terrain protocol docs:
--  https://mavlink.io/en/services/terrain.html

pragma Ada_2022;

package MAVLink.V2.Common.Terrain_Requests is

   pragma Pure;

   type Terrain_Request is record
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude of SW corner of first grid
      Lon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude of SW corner of first grid
      Grid_Spacing : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Grid spacing
      Mask         : Interfaces.Unsigned_64;
      --  Bitmask of requested 4x4 grids (row major 8x7 array of grids, 56
      --  bits)
   end record;

   for Terrain_Request use record
      Mask         at 0  range 0 .. 63;
      Lat          at 8  range 0 .. 31;
      Lon          at 12 range 0 .. 31;
      Grid_Spacing at 16 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Terrain_Request;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Request;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Request;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Terrain_Request;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Terrain_Request;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Terrain_Request;
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
     (Message : Terrain_Request;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Terrain_Request;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Terrain_Requests;
