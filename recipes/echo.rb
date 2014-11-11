bash  "insert_line" do
user "root"
code <<-EOH
    
    echo "BABYCENTER CHEF" >> /etc/motd
    EOH
  not_if "grep -q BABYCENTER /etc/motd"
end
