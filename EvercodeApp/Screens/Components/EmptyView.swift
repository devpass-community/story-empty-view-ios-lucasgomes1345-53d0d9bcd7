import UIKit

struct EmptyViewConfiguration {
    let title: String
}

class EmptyView: UIView {
    
    /* TODO
     Nossa EmptyView deve ter um componente UILabel centralizado na tela. Fique atento às configurações que o UILabel deve ter:
     - O atributo text deve ser configurado com o texto "No data found"
     - O atributo font deve ser configurado com o valor UIFont.systemFont(ofSize: 22, weight: .semibold)
     - O atributo textAlignment deve ser configurado com o valor .center
     - Defina o atributo backgroundColor da EmptyView como .white

     Assim que finalizar, crie um novo commit no branch feature/emptyview e envie para o GitHub. Me avisa aqui quando terminar.
     */
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension EmptyView {
    func setupViews() {
        backgroundColor = .systemBackground
        updateView(with: EmptyViewConfiguration(title: "No data found"))
        configureSubviews()
        configureSubviewsConstraints()
    }

    func configureSubviews() {
        addSubview(titleLabel)
    }

    func configureSubviewsConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

extension EmptyView {
    func updateView(with configuration: EmptyViewConfiguration) {
        titleLabel.text = configuration.title
    }
}
