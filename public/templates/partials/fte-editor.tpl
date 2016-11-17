<div id="fte-editor">
  <!-- IF isSelf -->
  <div class="clearfix">
    <button id="fte-editor-list-add" class="btn btn-primary pull-right">New List</button>
    <button id="fte-editor-list-delete" class="btn btn-danger pull-right">Delete List</button>
  </div>
  <!-- ENDIF isSelf -->

  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="form-group">
        <label for="fte-editor-list-select">Featured Topics Lists</label>
        <select id="fte-editor-list-select" class="form-control">
          <!-- BEGIN lists -->
          <option value="{lists.slug}" <!-- IF @first -->selected="selected"<!-- ENDIF @first -->>{lists.userTitle}</option>
          <!-- END lists -->
        </select>
      </div>

      <div class="form-group">
        <label for="fte-editor-list-autofeature">Automatically feature new topics in these categories.</label>
        <div class="input-group">
          <input id="fte-editor-list-autofeature" class="form-control" type="text" value="{list.autoFeature}"/>
          <span class="input-group-btn">
            <button id="fte-editor-list-autofeature-save" class="btn btn-success" type="button">Save</button>
          </span>
        </div>
      </div>

      <label>List Topics</label>
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Topic</th>
            <th class="fte-m16">Category</th>
            <th class="fte-m16">Date</th>
            <th class="fte-w1" <!-- IF !isSelf -->style="display:none;"<!-- ENDIF !isSelf -->></th>
          </tr>
        </thead>
        <tbody class="fte-topic-list">
          <!-- IMPORT partials/fte-topic-list.tpl -->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="4">
              <button class="btn btn-default" type="button" style="float:left;">&lt;</button>
              <button class="btn btn-default" type="button" style="float:right;">&gt;</button>
            </td>
          </tr>
        </tfoot>
      </table>
    </div>
  </div>
</div>
