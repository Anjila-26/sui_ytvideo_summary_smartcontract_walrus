module walrus::walrus{

    public struct FileSummary has key{
        id: UID,
        owner: address,
        file: vector<u8>,
        summary: vector<u8>,
    }

    entry fun add_summary(file: vector<u8>, summary: vector<u8>, ctx: &mut TxContext) {

        let file_summary = FileSummary{
            id:object::new(ctx),
            owner: tx_context::sender(ctx),
            file,
            summary
        };

        transfer::share_object(file_summary);
    }

    public fun get_summary(file_summary: &FileSummary): (address, vector<u8>, vector<u8>) {
        return (file_summary.owner, file_summary.file, file_summary.summary)
    }

}

