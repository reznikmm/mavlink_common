-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Temperature and humidity from hygrometer.

pragma Ada_2022;

package MAVLink.V2.Common.Hygrometer_Sensors is

   pragma Pure;

   type Hygrometer_Sensor is record
      Id          : Interfaces.Unsigned_8;
      --  Hygrometer ID
      Temperature : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  Temperature
      Humidity    : Interfaces.Unsigned_16;
      --  Units: [c%]
      --  Humidity
   end record;

   for Hygrometer_Sensor use record
      Temperature at 0 range 0 .. 15;
      Humidity    at 2 range 0 .. 15;
      Id          at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hygrometer_Sensor;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Hygrometer_Sensor;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Hygrometer_Sensor;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Hygrometer_Sensor;
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
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Hygrometer_Sensors;
