-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Cellular network status as reported by a particular modem. This is
--  primarily intended for logging, but a GCS may choose to display
--  link_tx_rate and link_rx_rate. Note that a value of 0 in the id field
--  indicates that the sender does not support reporting of multiple modems.
--  Message data should be from a single modem, but that is not guaranteed.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Cellular_Statuses is

   pragma Pure;

   type Cellular_Status is record
      Status         : Cellular_Status_Flag;
      --  Cellular modem status
      Failure_Reason : Cellular_Network_Failed_Reason;
      --  Failure reason when status in in CELLULAR_STATUS_FLAG_FAILED
      Type_Field     : Cellular_Network_Radio_Type;
      --  Cellular network radio type: gsm, cdma, lte...
      Quality        : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Signal quality in percent. If unknown, set to UINT8_MAX
      Mcc            : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Mobile country code. If unknown, set to UINT16_MAX
      Mnc            : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Mobile network code. If unknown, set to UINT16_MAX
      Lac            : Interfaces.Unsigned_16 :=
        0;
      --  Location area code. If unknown, set to 0
      Id             : Interfaces.Unsigned_8;
      --  Cellular modem instance number. Indexed from 1.
      Link_Tx_Rate   : Interfaces.Unsigned_32 :=
        0;
      --  Units: [KiB/s]
      --  Download rate.
      Link_Rx_Rate   : Interfaces.Unsigned_32 :=
        0;
      --  Units: [KiB/s]
      --  Upload rate.
      Cell_Tower_Id  : String (1 .. 9) :=
        [others => Character'Val (0)];
      --  ID of the currently connected cell tower. This must be NULL
      --  terminated if the length is less than 9 human-readable chars, and
      --  without the null termination (NULL) byte if the length is exactly 9
      --  chars.
      Band_Number    : Interfaces.Unsigned_8 :=
        0;
      --  LTE frequency band number.
      Band_Frequency : Raw_Float :=
        To_Raw (0.0);
      --  Units: [MHz]
      --  LTE radio frequency.
      Channel_Number : Interfaces.Unsigned_32 :=
        0;
      --  The channel number (CN). Absolute radio-frequency (ARFCN) / E-UTRA
      --  (EARFCN) / UTRA (UARFCN) / New radio (NR_CH).
      Rx_Level       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [dBm]
      --  On 3G is Received Signal Code Power (RSCP). On LTE is Reference
      --  Signal Received Power (RSRP). On 5G is New Radio Reference Signal
      --  Received Power (NR_RSRP).
      Tx_Level       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [dBm]
      --  Transmitter (modem) signal absolute power level.
      Rx_Quality     : Raw_Float :=
        To_Raw (0.0);
      --  Units: [dBm]
      --  On 3G is Receiver Quality (RxQual). On LTE is Reference Signal
      --  Received Quality (RSRQ). On 5G is New Radio Reference Signal
      --  Received Quality (NR_RSRQ).
      Sinr           : Raw_Float :=
        To_Raw (0.0);
      --  Units: [dB]
      --  Signal to interference plus noise ratio (SINR).
   end record;

   for Cellular_Status use record
      Mcc            at 0  range 0 .. 15;
      Mnc            at 2  range 0 .. 15;
      Lac            at 4  range 0 .. 15;
      Status         at 6  range 0 .. 7;
      Failure_Reason at 7  range 0 .. 7;
      Type_Field     at 8  range 0 .. 7;
      Quality        at 9  range 0 .. 7;
      Id             at 10 range 0 .. 7;
      Link_Tx_Rate   at 11 range 0 .. 31;
      Link_Rx_Rate   at 15 range 0 .. 31;
      Cell_Tower_Id  at 19 range 0 .. 71;
      Band_Number    at 28 range 0 .. 7;
      Band_Frequency at 29 range 0 .. 31;
      Channel_Number at 33 range 0 .. 31;
      Rx_Level       at 37 range 0 .. 31;
      Tx_Level       at 41 range 0 .. 31;
      Rx_Quality     at 45 range 0 .. 31;
      Sinr           at 49 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Cellular_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Cellular_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Cellular_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Cellular_Status;
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
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Cellular_Statuses;
