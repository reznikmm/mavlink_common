-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A change to the sequence number indicates that the set of AVAILABLE_MODES
--  has changed, and that the receiver should re-request all available modes.
--  The message is optional, and is only needed when the set of modes can
--  change dynamically after boot. It should be emitted whenever the set of
--  modes change. It should be streamed at low rate (nominally 0.3 Hz). See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

package MAVLink.V2.Common.Available_Modes_Monitors is

   pragma Pure;

   type Available_Modes_Monitor is record
      Seq : Interfaces.Unsigned_8;
      --  Sequence number. Iterates sequentially whenever AVAILABLE_MODES
      --  changes (e.g. support for a new mode is added/removed dynamically).
      --  0 initially. 1 on first change of mode set.
   end record;

   for Available_Modes_Monitor use record
      Seq at 0 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Available_Modes_Monitor;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Available_Modes_Monitor;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Available_Modes_Monitor;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Available_Modes_Monitor;
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
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Available_Modes_Monitors;
