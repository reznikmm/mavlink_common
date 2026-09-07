-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reports the on/off state of relays, as controlled by MAV_CMD_DO_SET_RELAY.
--  Message streaming should be requested using MAV_CMD_SET_MESSAGE_INTERVAL.
--  Note that it should not be sent on every relay state change to avoid
--  flooding the link.

pragma Ada_2022;

package MAVLink.V2.Common.Relay_Statuses is

   pragma Pure;

   type Relay_Status is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      On           : Interfaces.Unsigned_16;
      --  Relay states. Relay instance numbers are represented as individual
      --  bits in this mask by offset.
      Present      : Interfaces.Unsigned_16;
      --  Relay present. Relay instance numbers are represented as individual
      --  bits in this mask by offset. Bits will be true if a relay instance
      --  is configured.
   end record;

   for Relay_Status use record
      Time_Boot_Ms at 0 range 0 .. 31;
      On           at 4 range 0 .. 15;
      Present      at 6 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Relay_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Relay_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Relay_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Relay_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Relay_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Relay_Status;
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
     (Message : Relay_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Relay_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Relay_Statuses;
