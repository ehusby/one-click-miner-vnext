package payouts

var _ Payout = &VTCPayout{}

type VTCPayout struct{}

func NewVTCPayout() *VTCPayout {
	return &VTCPayout{}
}

func (p *VTCPayout) GetID() int {
	return 1
}

func (p *VTCPayout) GetName() string {
	return "Verthash OCM Vertcoin Wallet"
}

func (p *VTCPayout) GetTicker() string {
	return "VTC"
}

func (p *VTCPayout) GetPassword() string {
	return "x"
}

func (p *VTCPayout) GetCoingeckoExchange() string {
	return "bittrex"
}
