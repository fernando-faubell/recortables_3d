ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural( /$/, 'es')
  inflect.plural(/z$/i, 'ces')
  inflect.plural(/([aeiou])$/i, '\1s')

  inflect.plural(/_(.*)$/, 'es_\1')
  inflect.plural(/z_(.*)$/, 'ces_\1')
  inflect.plural(/([aeiou])_(.*)$/, '\1s_\2')

  inflect.singular(/s$/i, '')
  inflect.singular(/es$/i, '')
  inflect.singular(/ces$/i, 'z')
  inflect.singular(/pes$/i, 'pe')
  inflect.singular(/([tj])es$/i, '\1e')

  inflect.singular(/(.*)s_(.*)/i, '\1_\2')
  inflect.singular(/(.*)nes_(.*)/i, '\1n_\2')
  inflect.singular(/(.*)les_(.*)/i, '\1l_\2')

  inflect.irregular 'user', 'users'
  inflect.irregular 'user_session', 'user_sessions'

  inflect.irregular 'imagen', 'imagenes'
  inflect.irregular 'recortable', 'recortables'
  inflect.uncountable %w( pantalones ) # xD
end
