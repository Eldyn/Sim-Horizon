var _a;
import World from "mojang-minecraft";
export { World };
export * as Minecraft from 'mojang-minecraft';
export class CommandError extends Error {
    constructor(message, code, input) {
        super(message);
        this.message += ` (${code}) \nCommand: ${input}`;
        this.name = this.constructor.name;
        this.code = code;
        this.input = input;
    }
}

export let execCmd = (command, source = 'overworld') => {
    try {
        return (typeof source == 'string' ? World.getDimension(source) : source).runCommand(command);
    }
    catch (e) {
        if (e instanceof Error)
            throw e;
        let data = JSON.parse(e);
        throw new CommandError(data.statusMessage, data.statusCode, command);
    }
};
export let dim = {
    o: World.getDimension('overworld'),
    n: World.getDimension('nether'),
    e: World.getDimension('the end')
};