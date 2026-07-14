<?php

require_once 'Reservasi.php';

class ReservasiReguler extends Reservasi
{
    public $tipeBackground;
    public $cetakFotoLembar;

    public function hitungTotalBiaya()
    {
        return ($this->durasiJam * $this->tarifDasarPerjam) + 50000;
    }
}
