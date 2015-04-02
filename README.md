Formula Sheet Maker
===================

### Add your equations to `eqs.yml` using Latex
```yaml
    Heading 1:
      - equation 1 = x
      - f(x) = x^2
    Heading 2:
      - \frac{dy}{dx} = x
```

### Generate `index.html`
```bash
    $ ruby gen.ruby
```

### Open `index.html` with any web browser
