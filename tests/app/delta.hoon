/+  *test
/=  agent  /app/delta
|%
+$  state
  $:  %0
      values=(list @)
  ==
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~nec ~nec %delta]
      [~ ~ ~]
      [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~nec %belta ud+run]]
  ==
--
|%
++  test-add-client
  =|  run=@ud 
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~nec 10.000]))
  =+  !<(=state on-save:agent)
  ~&  values.state
  %+  expect-eq
    !>  [%0 values=[10.000 ~]]
    !>  state
--