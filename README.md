# RubyMotion block_given? bug

### MRI 2.0.2
```shell
$ ruby mri_block.rb

explicit_block result: true
implicit_block result: true
```

### RubyMotion 2.17
```shell
$ rake

explicit_block result: true
implicit_block result: false
```
