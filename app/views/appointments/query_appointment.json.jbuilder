json.user_count User.user_count
json.new_user_count_today User.new_user_count_today

json.current_page @appointments.current_page
json.total_pages @appointments.total_pages

json.appointments @appointments do |appointments|
  json.appointments, partial: 'appointments/appointment', as: :appointment
end