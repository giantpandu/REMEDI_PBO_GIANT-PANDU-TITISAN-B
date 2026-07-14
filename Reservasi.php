<?php

abstract class Reservasi
{
    protected $idReservasi;
    protected $namaPelanggan;
    protected $tanggalBooking;
    protected $durasiJam;
    protected $tarifDasarPerjam;

    abstract public function hitungTotalBiaya();
    abstract public function tampilSpesifikasiPaket();
}
