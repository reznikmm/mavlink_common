-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The location and information of an ADSB vehicle

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Adsb_Vehicles is

   pragma Pure;

   type Adsb_Vehicle is record
      Icao_Address  : Interfaces.Unsigned_32;
      --  ICAO address
      Lat           : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Latitude
      Lon           : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Longitude
      Altitude_Type : Adsb_Altitude_Type;
      --  ADSB altitude type.
      Altitude      : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [mm]
      --  Altitude (ASL)
      Heading       : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cdeg]
      --  Course over ground
      Hor_Velocity  : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cm/s]
      --  The horizontal velocity
      Ver_Velocity  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [cm/s]
      --  The vertical velocity. Positive is up
      Callsign      : String (1 .. 9);
      --  The callsign, 8+null
      Emitter_Type  : Adsb_Emitter_Type;
      --  ADSB emitter type.
      Tslc          : Interfaces.Unsigned_8;
      --  Units: [s]
      --  Time since last communication. This is the age of the ADS-B
      --  information in this message, in seconds.
      Flags         : Adsb_Flags;
      --  Bitmap to indicate various statuses including valid data fields
      Squawk        : Interfaces.Unsigned_16;
      --  Squawk code. Note that the code is in decimal: e.g. 7700 (general
      --  emergency) is encoded as binary 0b0001_1110_0001_0100, not(!) as
      --  0b0000_111_111_000_000
   end record;

   for Adsb_Vehicle use record
      Icao_Address  at 0  range 0 .. 31;
      Lat           at 4  range 0 .. 31;
      Lon           at 8  range 0 .. 31;
      Altitude      at 12 range 0 .. 31;
      Heading       at 16 range 0 .. 15;
      Hor_Velocity  at 18 range 0 .. 15;
      Ver_Velocity  at 20 range 0 .. 15;
      Flags         at 22 range 0 .. 15;
      Squawk        at 24 range 0 .. 15;
      Altitude_Type at 26 range 0 .. 7;
      Callsign      at 27 range 0 .. 71;
      Emitter_Type  at 36 range 0 .. 7;
      Tslc          at 37 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Adsb_Vehicle;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Adsb_Vehicle;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Adsb_Vehicle;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Adsb_Vehicle;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Adsb_Vehicle;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Adsb_Vehicle;
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
     (Message : Adsb_Vehicle;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Adsb_Vehicle;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Adsb_Vehicles;
