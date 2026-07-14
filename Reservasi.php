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

class ReservasiReguler extends Reservasi
{
    public $tipeBackground;
    public $cetakFotoLembar;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerjam, $tipeBackground, $cetakFotoLembar)
    {
        $this->idReservasi = $idReservasi;
        $this->namaPelanggan = $namaPelanggan;
        $this->tanggalBooking = $tanggalBooking;
        $this->durasiJam = $durasiJam;
        $this->tarifDasarPerjam = $tarifDasarPerjam;
        $this->tipeBackground = $tipeBackground;
        $this->cetakFotoLembar = $cetakFotoLembar;
    }

    public function hitungTotalBiaya()
    {
        return $this->durasiJam * $this->tarifDasarPerjam;
    }

    public function tampilSpesifikasiPaket()
    {
        return "Reservasi Reguler - Background: {$this->tipeBackground}, Cetak Foto: {$this->cetakFotoLembar}";
    }
}

class ReservasiPremium extends Reservasi
{
    public $kuotaTalentOrang;
    public $layananMakeup;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerjam, $kuotaTalentOrang, $layananMakeup)
    {
        $this->idReservasi = $idReservasi;
        $this->namaPelanggan = $namaPelanggan;
        $this->tanggalBooking = $tanggalBooking;
        $this->durasiJam = $durasiJam;
        $this->tarifDasarPerjam = $tarifDasarPerjam;
        $this->kuotaTalentOrang = $kuotaTalentOrang;
        $this->layananMakeup = $layananMakeup;
    }

    public function hitungTotalBiaya()
    {
        return $this->durasiJam * $this->tarifDasarPerjam;
    }

    public function tampilSpesifikasiPaket()
    {
        return "Reservasi Premium - Kuota Talent: {$this->kuotaTalentOrang}, Makeup: {$this->layananMakeup}";
    }
}

class ReservasiEvent extends Reservasi
{
    public $namaLokasiLuar;
    public $biayaTransportasiTim;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerjam, $namaLokasiLuar, $biayaTransportasiTim)
    {
        $this->idReservasi = $idReservasi;
        $this->namaPelanggan = $namaPelanggan;
        $this->tanggalBooking = $tanggalBooking;
        $this->durasiJam = $durasiJam;
        $this->tarifDasarPerjam = $tarifDasarPerjam;
        $this->namaLokasiLuar = $namaLokasiLuar;
        $this->biayaTransportasiTim = $biayaTransportasiTim;
    }

    public function hitungTotalBiaya()
    {
        return $this->durasiJam * $this->tarifDasarPerjam;
    }

    public function tampilSpesifikasiPaket()
    {
        return "Reservasi Event - Lokasi Luar: {$this->namaLokasiLuar}, Transportasi: {$this->biayaTransportasiTim}";
    }
}
