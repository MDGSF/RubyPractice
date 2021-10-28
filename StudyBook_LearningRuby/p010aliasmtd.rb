# p010aliasmtd.rb
# alias new_name old_name
# when a method is aliased, the new name refers
# to a copy of the original method's body

def oldmtd
  "old method"
end

alias newmtd oldmtd

def oldmtd
  "old improved method"
end

puts oldmtd
puts newmtd
