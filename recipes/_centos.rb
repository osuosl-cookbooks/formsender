include_recipe 'yum-ius'

%w(python27 python27-devel python27-pip).each do |pkg|
  package pkg
end
