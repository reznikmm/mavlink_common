-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The RAW pressure readings for the typical setup of one absolute pressure
--  and one differential pressure sensor. The sensor values should be the raw,
--  UNSCALED ADC values.

pragma Ada_2022;

package MAVLink.V2.Common.Raw_Pressures is

   pragma Pure;

   type Raw_Pressure is record
      Time_Usec   : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Press_Abs   : Interfaces.Integer_16;
      --  Absolute pressure (raw)
      Press_Diff1 : Interfaces.Integer_16 :=
        0;
      --  Differential pressure 1 (raw, 0 if nonexistent)
      Press_Diff2 : Interfaces.Integer_16 :=
        0;
      --  Differential pressure 2 (raw, 0 if nonexistent)
      Temperature : Interfaces.Integer_16;
      --  Raw Temperature measurement (raw)
   end record;

   for Raw_Pressure use record
      Time_Usec   at 0  range 0 .. 63;
      Press_Abs   at 8  range 0 .. 15;
      Press_Diff1 at 10 range 0 .. 15;
      Press_Diff2 at 12 range 0 .. 15;
      Temperature at 14 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Raw_Pressure;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Raw_Pressure;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Raw_Pressure;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Raw_Pressure;
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
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Raw_Pressures;
