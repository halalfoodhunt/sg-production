jQuery(document).on 'turbolinks:load', ->
  opening_hours = $('#opening_hours')

  opening_hours.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  opening_hours.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)

  opening_hours.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

    
jQuery(document).on 'turbolinks:load', ->
  verifying_documents = $('#verifying_documents')
  count = verifying_documents.find('.count > span')

  recount = -> count.text verifying_documents.find('.nested-fields').size()

  verifying_documents.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  verifying_documents.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)
    recount()

  verifying_documents.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  verifying_documents.on 'cocoon:after-remove', (e, removed_el) ->
    recount()
    
jQuery(document).on 'turbolinks:load', ->
  menus = $('#menus')
  count = menus.find('.count > span')

  recount = -> count.text menus.find('.nested-fields').size()

  menus.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  menus.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)
    recount()

  menus.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  menus.on 'cocoon:after-remove', (e, removed_el) ->
    recount()