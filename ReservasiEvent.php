<?php

require_once 'Reservasi.php';

class ReservasiEvent extends Reservasi
{
    public $namaLokasiLuar;
    public $biayaTransportasiTim;

    public function hitungTotalBiaya()
    {
        return ($this->durasiJam * $this->tarifDasarPerjam) + $this->biayaTransportasiTim;
    }
}
