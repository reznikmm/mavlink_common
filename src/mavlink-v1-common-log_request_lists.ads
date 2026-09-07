-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request a list of available logs. On some systems calling this may stop
--  on-board logging until LOG_REQUEST_END is called. If there are no log
--  files available this request shall be answered with one LOG_ENTRY message
--  with id = 0 and num_logs = 0. LOG_ENTRY messages can start with id 1 or 0.
--  The ground station needs to be able to process either.

pragma Ada_2022;

package MAVLink.V1.Common.Log_Request_Lists is

   pragma Pure;

   Log_Request_List_Len : constant Interfaces.Unsigned_8 := 6;

   type Log_Request_List is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Start            : Interfaces.Unsigned_16;
      --  First log id (0 for first available)
      End_Field        : Interfaces.Unsigned_16;
      --  Last log id (0xffff for last available)
   end record;

   for Log_Request_List use record
      Start            at 0 range 0 .. 15;
      End_Field        at 2 range 0 .. 15;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Log_Request_List;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Request_List;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Request_List;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Request_List;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Log_Request_List;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Request_List;
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

end MAVLink.V1.Common.Log_Request_Lists;
