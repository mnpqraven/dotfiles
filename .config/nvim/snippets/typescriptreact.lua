return {
  s('setState', {
    t('const [ '), i(1, 'state'), t(', set'),
    l(l._1:gsub("^%l", string.upper), 1),
    t(' ] = useState('), i(2),
    t(');')
  }),
}
