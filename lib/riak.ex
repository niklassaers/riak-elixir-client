defmodule Riak do
	use Application.Behaviour
	defrecord State, socket_pid: nil

	def start(_type, _state) do
		Riak.Supervisor.start_link()
	end
end