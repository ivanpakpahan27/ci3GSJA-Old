<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('categories/create'); ?>
<div class="form-group">
	<label>Nama</label>
	<input type="text" class="form-control" name="name" placeholder="Masukkan kategori">
</div>
<button type="submit" class="btn btn-default">Kirim</button>
</form>