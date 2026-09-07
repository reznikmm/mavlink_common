-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Response to a REQUEST_EVENT in case of an error (e.g. the event is not
--  available anymore).

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Response_Event_Errors is

   pragma Pure;

   type Response_Event_Error is record
      Target_System             : Interfaces.Unsigned_8;
      --  System ID
      Target_Component          : Interfaces.Unsigned_8;
      --  Component ID
      Sequence_Field            : Interfaces.Unsigned_16;
      --  Sequence number.
      Sequence_Oldest_Available : Interfaces.Unsigned_16;
      --  Oldest Sequence number that is still available after the sequence
      --  set in REQUEST_EVENT.
      Reason                    : Mav_Event_Error_Reason;
      --  Error reason.
   end record;

   for Response_Event_Error use record
      Sequence_Field            at 0 range 0 .. 15;
      Sequence_Oldest_Available at 2 range 0 .. 15;
      Target_System             at 4 range 0 .. 7;
      Target_Component          at 5 range 0 .. 7;
      Reason                    at 6 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Response_Event_Error;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Response_Event_Error;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Response_Event_Error;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Response_Event_Error;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Response_Event_Error;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Response_Event_Error;
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
     (Message : Response_Event_Error;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Response_Event_Error;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Response_Event_Errors;
