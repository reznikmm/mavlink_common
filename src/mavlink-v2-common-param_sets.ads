-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set a parameter value (write new value to permanent storage). The
--  receiving component should acknowledge the new parameter value by
--  broadcasting a PARAM_VALUE message (broadcasting ensures that multiple GCS
--  all have an up-to-date list of all parameters). If the sending GCS did not
--  receive a PARAM_VALUE within its timeout time, it should re-send the
--  PARAM_SET message. The parameter microservice is documented at
--  https://mavlink.io/en/services/parameter.html.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Param_Sets is

   pragma Pure;

   type Param_Set is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Param_Id         : String (1 .. 16);
      --  Onboard parameter id, terminated by NULL if the length is less than
      --  16 human-readable chars and WITHOUT null termination (NULL) byte if
      --  the length is exactly 16 chars - applications have to provide 16+1
      --  bytes storage if the ID is stored as string
      Param_Value      : Raw_Float;
      --  Onboard parameter value
      Param_Type       : Mav_Param_Type;
      --  Onboard parameter type.
   end record;

   for Param_Set use record
      Param_Value      at 0  range 0 .. 31;
      Target_System    at 4  range 0 .. 7;
      Target_Component at 5  range 0 .. 7;
      Param_Id         at 6  range 0 .. 127;
      Param_Type       at 22 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Set;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Set;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Set;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Set;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Param_Set;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Set;
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
     (Message : Param_Set;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Set;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Param_Sets;
