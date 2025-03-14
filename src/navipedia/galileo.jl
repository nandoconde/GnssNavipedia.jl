D_SIGNALS[Signals.E1B()] = SignalProperties(
    CarrierProperties(f_E1, 0.0, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Data(NavData.INAV()),
                SpreadingCodeProperties(1, 250),
                SpreadingCodeProperties(4092, f₀)
            ),
            Modulator(
                DigitalModulation.BOCcos(f₀),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E1C()] = SignalProperties(
    CarrierProperties(f_E1, π, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Pilot(),
                SpreadingCodeProperties(25, 250),
                SpreadingCodeProperties(4092, f₀)
            ),
            Modulator(
                DigitalModulation.BOCcos(f₀),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E5aI()] = SignalProperties(
    CarrierProperties(f_E5a, 0.0, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Data(NavData.FNAV()),
                SpreadingCodeProperties(20, 1000),
                SpreadingCodeProperties(10230, 10f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E5aQ()] = SignalProperties(
    CarrierProperties(f_E5a, π / 2, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Pilot(),
                SpreadingCodeProperties(100, 1000),
                SpreadingCodeProperties(10230, 10f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E5bI()] = SignalProperties(
    CarrierProperties(f_E5b, 0.0, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Data(NavData.INAV()),
                SpreadingCodeProperties(4, 1000),
                SpreadingCodeProperties(10230, 10f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E5bQ()] = SignalProperties(
    CarrierProperties(f_E5b, π / 2, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Pilot(),
                SpreadingCodeProperties(100, 1000),
                SpreadingCodeProperties(10230, 10f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)


D_SIGNALS[Signals.E6B()] = SignalProperties(
    CarrierProperties(f_E6, 0.0, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Data(NavData.CNAV()),
                SpreadingCodeProperties(1, 1000),
                SpreadingCodeProperties(5115, 5f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)

D_SIGNALS[Signals.E6C()] = SignalProperties(
    CarrierProperties(f_E6, π, 0.5),
    BasebandProperties.SingleSignal(
        BasebandSignal(
            ChipSource(
                DataSource.Pilot(),
                SpreadingCodeProperties(100, 1000),
                SpreadingCodeProperties(5115, 5f₀)
            ),
            Modulator(
                DigitalModulation.BPSK(),
                SignalLevelEncoding.NRZI()
            )
        )
    )
)
