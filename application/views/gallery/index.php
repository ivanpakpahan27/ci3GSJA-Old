<h2><?= $title; ?></h2>

<?php if ($this->session->userdata('logged_in')) : ?>
	<a href="<?php echo base_url(); ?>gallery/create"><button>Upload Gambar</button></a><br>
<?php endif; ?>
<div class="gallery-image">
	<?php foreach ($gallery as $gal) : ?>
		<?php $date = date_create($gal['date_taken']);
		$date_time = date_format($date, "d/m/Y");
		?>
		<!-- -------------------------------------------------------------------------------- -->
		<div class="img-box">
			<img id="myImg" src="<?php echo site_url(); ?>assets/images/gallery/<?php echo $gal['upload_image']; ?>" />
			<div class="transparent-box">
				<div class="caption">
					<p><?php echo $gal['title']; ?></p>
					<p>Diambil pada tanggal <?php echo $date_time ?></p>
					<button onclick="Download('<?php echo site_url(); ?>assets/images/gallery/<?php echo $gal['upload_image']; ?>','<?php echo $gal['upload_image']; ?>')">Download</button>
					<?php if ($this->session->userdata('logged_in')) : ?>
						<?php echo form_open('/gallery/delete/' . $gal['id']); ?>
						<input style="font-family:Poppins, sans-serif;" type="submit" value="Hapus" class="btn btn-danger">
						</form>
					<?php endif; ?>
					<script>
						function Download(url, filename) {
							var a = document.createElement('a');
							a.href = url;
							a.download = filename;
							document.body.appendChild(a);
							a.click();
							document.body.removeChild(a);
						}
					</script>
				</div>
			</div>
			<div id="myModal" class="modal">
				<span class="close">&times;</span>
				<img class="modal-content" id="img01">
				<div id="caption"></div>
			</div>
		</div>

	<?php endforeach; ?>
</div>
<div class="pagination-links">
	<?php echo $this->pagination->create_links(); ?>
</div>