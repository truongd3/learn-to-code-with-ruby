def authenticate_agent(agent_number, name, job_title)
  if agent_number == "007" && name == "Truong" || job_title == "SWE" # Check from left to right
    puts "Print ra di 1"
  end
  if agent_number == "007" && (name == "Truong" || job_title == "SWE") # Check from left to right
    puts "Print ra di 2"
  end
end

authenticate_agent("007", "Truong", "SWE")
puts "new line"
authenticate_agent("007", "Tri", "Agent")