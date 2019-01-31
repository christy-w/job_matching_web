<?php echo $form->messages(); ?>

<div class="row">

	<div class="col-md-6">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Employer Info</h3>
			<div class="box-body">
				<?php echo $form->open(); ?>

					<?php echo $form->bs3_text('Chinese Name', 'name_zh'); ?>
					<?php echo $form->bs3_text('English Name', 'name_en'); ?>
					<?php echo $form->bs3_text('Description', 'description'); ?>
					<?php echo $form->bs3_text('Email', 'email'); ?>
					<?php echo $form->bs3_text('Tel(Used to login)', 'tel'); ?>
					<?php echo $form->bs3_text('Address', 'address'); ?>
					<?php echo $form->bs3_text('No. of Employee', 'scale'); ?>

					<?php if ( !empty($districts) ): ?>
					<div class="form-group">
                        <label for="districts">Districts</label>
                        <select name="district">
						    <?php foreach ($districts as $district): ?>
                                <option value="<?php echo $district->id; ?>"><?php echo $district->name_en; ?></option>
						    <?php endforeach; ?>
                        </select>
					</div>
                    <?php endif; ?>

					<?php echo $form->bs3_submit(); ?>
					
				<?php echo $form->close(); ?>
			</div>
		</div>
	</div>
	
</div>