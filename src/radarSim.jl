# This is the main script. 
# 1- Define Radar Parameters

radar_params = Dict(
    :fc => 4.3e9,          # Center frequency in Hz
    :bw => 150e6,          # Bandwidth in Hz
    :prf => 143,           # Pulse Repetition Frequency in Hz
    :power_tx => 0.4,      # Transmitter power in Watts
    :noise_figure => 8,    # Noise figure in dB
    :beamwidth => 40,      # Beamwidth in degrees
    :max_altitude => 1676  # Maximum altitude in meters
)

# Sweep time derived from PRF
sweep_time = 1 / radar_params[:prf]

using Plots

# Generate time vector
t = 0:sweep_time/1000:sweep_time  # Time vector with 1000 samples per sweep time

# 2. Define the triangular FMCW waveform function
function generate_fmcw_waveform(fc, bw, sweep_time, t)
    k = bw / (sweep_time / 2)  # Sweep rate
    f_t = fc .+ k .* (t .- sweep_time / 2)  # Frequency at each time
    return cos.(2π .* f_t .* t)
end

# Generate the waveform
waveform = generate_fmcw_waveform(radar_params[:fc], radar_params[:bw], sweep_time, t)

# Plot the waveform
plot(t, waveform, title="FMCW Waveform", xlabel="Time (s)", ylabel="Amplitude")
