-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a potential collision

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Collisions is

   pragma Pure;

   type Collision is record
      Src                      : Mav_Collision_Src;
      --  Collision data source
      Id                       : Interfaces.Unsigned_32;
      --  Unique identifier, domain based on src field
      Action                   : Mav_Collision_Action;
      --  Action that is being taken to avoid this collision
      Threat_Level             : Mav_Collision_Threat_Level;
      --  How concerned the aircraft is about this collision
      Time_To_Minimum_Delta    : Raw_Float;
      --  Units: [s]
      --  Estimated time until collision occurs
      Altitude_Minimum_Delta   : Raw_Float;
      --  Units: [m]
      --  Closest vertical distance between vehicle and object
      Horizontal_Minimum_Delta : Raw_Float;
      --  Units: [m]
      --  Closest horizontal distance between vehicle and object
   end record;

   for Collision use record
      Id                       at 0  range 0 .. 31;
      Time_To_Minimum_Delta    at 4  range 0 .. 31;
      Altitude_Minimum_Delta   at 8  range 0 .. 31;
      Horizontal_Minimum_Delta at 12 range 0 .. 31;
      Src                      at 16 range 0 .. 7;
      Action                   at 17 range 0 .. 7;
      Threat_Level             at 18 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Collision;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Collision;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Collision;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Collision;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Collision;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Collision;
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
     (Message : Collision;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Collision;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Collisions;
