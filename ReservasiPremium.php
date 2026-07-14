<?php

require_once 'Reservasi.php';

class ReservasiPremium extends Reservasi
{
    public $kuotaTalentOrang;
    public $layananMakeup;

    public function hitungTotalBiaya()
    {
        return ($this->durasiJam * $this->tarifDasarPerjam) * 1.20;
    }
}
