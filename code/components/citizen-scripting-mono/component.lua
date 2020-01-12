if os.is('windows') then
	filter 'architecture:x64'
		links { "mono-2.0-sgen" }

	if _OPTIONS['game'] == 'server' then
		includedirs { "deps/server/include/" }
		libdirs { "deps/server/lib/" }
	else
		includedirs { "deps/include/" }
		libdirs { "deps/lib/" }
	end
else
	includedirs { '/usr/include/mono-2.0/ '}

	linkoptions '/usr/lib/libmonosgen-2.0.a'
end
