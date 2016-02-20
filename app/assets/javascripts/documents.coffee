$(document).on 'nested:fieldAdded', (event) ->
  $field = event.field.find("input[name=item_search]")

  $field.autocomplete(
    source: $field.data('source')
    select: (ui, item) ->
      $field.val(item.item.name)
      $field.next().val(item.item.id)
      return false
  ).data('uiAutocomplete')._renderItem = (ul, item) ->
    return $('<li></li>').data("item.autocomplete", item).append('<a>' + item.name + '</a>').appendTo(ul)
return