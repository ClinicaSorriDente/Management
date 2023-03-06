require "test_helper"

class AdminTest < ActiveSupport::TestCase
   test "salvar Admin sem senha" do
     admin = Admin.new usuario:'Rodrigo'
     assert_not admin.save
   end

   test "salvar Admin com senha e confirmação de senha diferentes" do
     admin = Admin.new usuario:'Rodrigo', password:'12345', password_confirmation:'12346'
     assert_not admin.save
   end

   test "salvar Admin corretamente" do
     admin = Admin.new usuario:'Ricardo', password:'12345', password_confirmation:'12345'
     assert admin.save
   end
end
