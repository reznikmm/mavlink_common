-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Send raw controller memory. The use of this message is discouraged for
--  normal packets, but a quite efficient way for testing new messages and
--  getting experimental debug output.

pragma Ada_2022;

package MAVLink.V2.Common.Memory_Vects is

   pragma Pure;

   type Memory_Vect is record
      Address    : Interfaces.Unsigned_16;
      --  Starting address of the debug variables
      Ver        : Interfaces.Unsigned_8 :=
        0;
      --  Version code of the type variable. 0=unknown, type ignored and
      --  assumed int16_t. 1=as below
      Type_Field : Interfaces.Unsigned_8;
      --  Type code of the memory variables. for ver = 1: 0=16 x int16_t, 1=16
      --  x uint16_t, 2=16 x Q15, 3=16 x 1Q14
      Value      : Integer_8_Array (1 .. 32);
      --  Memory contents at specified address
   end record;

   for Memory_Vect use record
      Address    at 0 range 0 .. 15;
      Ver        at 2 range 0 .. 7;
      Type_Field at 3 range 0 .. 7;
      Value      at 4 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Memory_Vect;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Memory_Vect;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Memory_Vect;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Memory_Vect;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Memory_Vect;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Memory_Vect;
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
     (Message : Memory_Vect;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Memory_Vect;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Memory_Vects;
