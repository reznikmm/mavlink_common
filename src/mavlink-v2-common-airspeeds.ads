-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Airspeed information from a sensor.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Airspeeds is

   pragma Pure;

   type Airspeed is record
      Id          : Interfaces.Unsigned_8;
      --  Sensor ID.
      Airspeed    : Raw_Float;
      --  Units: [m/s]
      --  Calibrated airspeed (CAS).
      Temperature : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [cdegC]
      --  Temperature.
      Raw_Press   : Raw_Float :=
        To_Raw (0.0);
      --  Units: [hPa]
      --  Raw differential pressure.
      Flags       : Airspeed_Sensor_Flags;
      --  Airspeed sensor flags.
   end record;

   for Airspeed use record
      Airspeed    at 0  range 0 .. 31;
      Raw_Press   at 4  range 0 .. 31;
      Temperature at 8  range 0 .. 15;
      Id          at 10 range 0 .. 7;
      Flags       at 11 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Airspeed;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Airspeed;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Airspeed;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Airspeed;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Airspeed;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Airspeed;
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
     (Message : Airspeed;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Airspeed;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Airspeeds;
