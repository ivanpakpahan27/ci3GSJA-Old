<h2 style="font-family:Poppins, sans-serif;"><?php echo $post['title']; ?></h2>
<?php
$originalDate = $post['created_at'];
$newDate = date("d F Y,  H:m", strtotime($originalDate));
?>
<small style="font-family:Poppins, sans-serif;" class="post-date">Diposting pada: <?php echo $newDate; ?> ,oleh <?php echo $post['writter']; ?></small><br>
<center><img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>"></center><br><br>
<div class="post-body">
	<?php echo $post['body']; ?>
</div>

<?php if ($this->session->userdata('user_id') == $post['user_id']) : ?>
	<hr>
	<a style="font-family:Poppins, sans-serif;" class="btn btn-default pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
	<?php echo form_open('/posts/delete/' . $post['id']); ?>
	<input style="font-family:Poppins, sans-serif;" type="submit" value="Hapus" class="btn btn-danger">
	</form>
<?php endif; ?>
<hr>
<h3 style="font-family:Poppins, sans-serif;">Komentar</h3>
<?php if ($comments) : ?>
	<?php foreach ($comments as $comment) : ?>
		<div class="well">
			<h5 style="font-family:Poppins, sans-serif;"> <?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h5>
		</div>
	<?php endforeach; ?>
<?php else : ?>
	<p style="font-family:Poppins, sans-serif;">Belum ada komentar</p>
<?php endif; ?>
<hr>
<h3 style="font-family:Poppins, sans-serif;">Tambahkan komentar</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/' . $post['id']); ?>
<div class="form-group" style="font-family:Poppins, sans-serif;">
	<label>Nama</label>
	<input type="text" name="name" class="form-control">
</div>
<div class="form-group" style="font-family:Poppins, sans-serif;">
	<label>Email</label>
	<input type="text" name="email" class="form-control">
</div>
<div class="form-group" style="font-family:Poppins, sans-serif;">
	<label>Komentar</label>
	<textarea name="body" class="form-control"></textarea>
</div>
<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
<button style="font-family:Poppins, sans-serif;" class="btn btn-primary" type="submit">Kirim</button>
</form>